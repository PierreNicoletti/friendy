class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true # anyone can view a booking
  end

  def create?
    return true # anyone can create a booking
  end

  def update?
    return true # anyone can update a booking
  end

  def destroy?
    return true # anyone can create a booking
  end
end
