class CollaboratorsController < ApplicationController
  before_action :set_wiki

  def new
    @collaborator = Collaborator.new
  end

  def create
    @collaborator = Collaborator.new(wiki_id: @wiki.id, user_id: params[:user_id])
  end

  def destroy
    @collaborator = Collaborator.find(params[:id])
  end

  private

  def set_wiki
    @wiki = Wiki.find(params[:wiki_id])
  end
end
