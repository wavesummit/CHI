require 'test/unit'
require '../lib/chi'

class Chi_test < Test::Unit::TestCase
 

  def test_invalid_chi
  
    assert_raise RuntimeError do
      Chi.new('1234')
     end
     
    assert_raise RuntimeError do
          Chi.new('0000000000')
     end
     
    assert_raise RuntimeError do
          Chi.new('0601310021') 
    end
        
  end
  
  def test_valid_chi
    valid_chi =  ['2207599140',
                  '1607540800',
                  '1911640720',
                  '1604400110',
                  '3112600010',
                  '0112500390',
                  '0201370050',
                  '0107500930']
      
    valid_chi.each do |n|
        
       assert_nothing_raised do
        Chi.new(n)       
       end
    end
    
    assert_nothing_raised do
      chi = Chi.new('2207599140')
      chi.number = '2207599140'
    end
  end
  
end
