class WikiPolicy < ApplicationPolicy

  attr_reader :user, :wiki

  def initialize(user, wiki)
    @user = user
    @wiki = wiki
  end

  def update?
    user.admin? or not post.published?
  end
  
  def admin_list?
    user.admin?
  end
end