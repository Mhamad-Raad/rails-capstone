class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      redirect_to '/groups', notice: 'Category was successfully created.'
    else
      render :new
    end
  end


  def show
    @group = Group.find(params[:id])
    @entities = @group.entities.order(created_at: :desc)
    @total_amount = @entities.sum(:amount)
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
