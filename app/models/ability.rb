class Ability
  include CanCan::Ability

  def initialize( user )
    user ||= User.new
    if user.is? :admin
      can :manage, Employee
    else
      can :read, Project
    end
  end
   
end
