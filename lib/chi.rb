class String
  def is_chi?
    
    #check chi for dob and length of 10
    if self != self[/^(0[1-9]|[12][0-9]|3[01])(0[1-9]|1[012])\d{6}$/] 
      return false
    end
    
    #convert to array and reverse
    a = self.split(//).reverse
    
    #each number in chi mupltiplied by the index added to a sum 
    result = (1..10).inject(0){|sum, x| sum + (x * a[x-1].to_i)}
  
    return (result != 0 and (result % 11) == 0) 

  end

end
