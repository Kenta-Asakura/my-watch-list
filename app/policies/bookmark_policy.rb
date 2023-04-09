class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def new?
    create?
  end

  def create?
    user.present?
  end

  def destroy?
    user.present? && record.user == user
  end
end
