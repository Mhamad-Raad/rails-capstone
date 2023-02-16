class EntitiesController < ApplicationController
  def index 
    @group = Group.find(params[:group_id])
    @entities = @group.entities.order(created_at: :desc)
    @total_amount = @entities.sum(:amount)
  end
end
