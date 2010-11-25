class Chi
  attr_accessor :number

  def initialize(num)
    
    self.number=num
          
  end
  
  def number=(num)   
    @number = num.to_s
        if !validate
          raise 'Invalid CHI number ' + @number
        end     
  end  

   
  def validate
    @i = 10
    @sum = 0
  
    if @number.match(/^(0[1-9]|[12][0-9]|3[01])(0[1-9]|1[012])\d{6}$/).nil? #check chi for dob and length of 10
      return false
    end
  
    a_chi = @number.to_s.split(//)
    
    a_chi.each do|x| 
        @sum += (x.to_i * @i)
        @i -= 1
     end
     
     if (@sum%11) != 0 
         return false
     end
    
    return true
  end
  
  
end