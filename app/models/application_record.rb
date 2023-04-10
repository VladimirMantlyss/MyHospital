class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def update(attributes)
    super
  end
end
