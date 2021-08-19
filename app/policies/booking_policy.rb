class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # user voit toutes les bookings
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  # update comprend aussi edit
  def update?
    record.user == user
    # - record: booking passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end
end
