# frozen_string_literal: true

module Spree
  class Role < ActiveRecord::Base
    has_and_belongs_to_many :users, join_table: 'spree_roles_users',
                                    class_name: Spree.user_class.to_s
  end
end
