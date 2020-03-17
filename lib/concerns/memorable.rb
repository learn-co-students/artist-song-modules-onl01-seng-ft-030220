module Memorable 
  module ClassMethods
    def reset_all 
      self.clear
    end
    
    def count 
      self.count 
    end
  end
  
  module InstanceMethods 
    def initialize
      self.class.all << self
    end
  end
end