module Finable
  
  def find_by_name
    self.all.detect{|a| a.name == name}
  end
  
  
end