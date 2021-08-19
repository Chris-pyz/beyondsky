class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # user ne voit que ses bookings
      scope.where(user: user)
    end
  end

  def show?
    true
  end

end
