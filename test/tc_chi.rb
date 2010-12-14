require 'test/unit'
require '../../chi/lib/chi'

class Chi_test < Test::Unit::TestCase

  def test_invalid_chi

    assert_equal false, "1234".is_chi?
    assert_equal false, "0000000000".is_chi?
    assert_equal false, "0601310021".is_chi?

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
      assert n.is_chi?    
    end  
     
  end
  
end