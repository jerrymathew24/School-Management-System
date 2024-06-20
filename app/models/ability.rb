class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.is_a?(Teacher)
      can :read, Teacher
      can :read, Student
    end
  end
end
