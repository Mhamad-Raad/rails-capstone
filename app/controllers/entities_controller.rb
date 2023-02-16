class EntitiesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @entities = @group.entities.order(created_at: :desc)
    @total_amount = @entities.sum(:amount)
  end

  def new
    @group = Group.find(params[:group_id])
    @entity = @group.entities.new
  end

  def create
    @group = Group.find(params[:group_id])
    @entity = @group.entities.new(name: entity_params[:name], amount: entity_params[:amount],
                                  author_id: current_user.id)

    if @entity.save!
      @membership = Membership.create(group_id: entity_params[:group_id], entity_id: @entity.id)
      redirect_to group_entities_path(@group), notice: 'Transaction was successfully created.'
    else
      render :new
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :group_id)
  end
end
