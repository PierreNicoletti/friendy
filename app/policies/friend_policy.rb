class FriendPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true # anyone can view a friend
  end

  def create?
    return true # anyone can create a friend
  end

  def update?
    user_is_authorized? # only friend creator can update a friend
  end

  def destroy?
    user_is_authorized? # only friend creator can destroy a friend
  end

  private

  def user_is_authorized?
    record.user == user # || user.admin
  end
end
