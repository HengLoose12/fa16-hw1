class Foobar

  def self.baz(a)
    a.map! do |e| 
    	e.to_i
    end 
    a.map! do |e| 
    	e+2
    end
    a.delete_if {|n| n%2==1}
    a = a.uniq
    a = a.delete_if {|n| n > 10}
    return a.inject(:+)
  end
end


