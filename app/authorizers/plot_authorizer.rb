class PlotAuthorizer < ApplicationAuthorizer
  # Class method: can this user at least sometimes create a Schedule?
  def self.creatable_by?(user)
     user.has_role? :admin
  end

  def self.updatable_by?(user)
     user.has_role? :admin
  end
 end