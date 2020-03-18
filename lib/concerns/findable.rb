module Findable
  
  def find_by_name(name)
    self.all.detect {|data| data.name == name}
  end
  
end