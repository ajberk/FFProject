module SharedMethods
  extend ActiveSupport::Concern

  included do
    scope :public, -> { where(…) }
  end

  def is_public?
    # your code
  end

  module ClassMethods
    def find_all_public
      where #some condition
    end
  end
end
