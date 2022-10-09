# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
    if user.present? and user.user_type=="Proveedor" #Proveedor
      can :manage, Order, provider_id: user.id
      can :read, Users, :all
    elsif user.present? and user.user_type=="Comprador" #Comprador
      can :read, Order,  buyer_id: user.id
      can :manage, Address, user_id: user.id
    elsif user.present? and user.user_type=="Despachador" #Despachador
      can [:read, :update], Order, dispatcher_id: user.id
    elsif user.present? and user.user_type=="Administrador" #administrador
      can :manage, :all
    else
      can :read, Order
    end
  end
end
