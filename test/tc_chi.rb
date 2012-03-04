require 'test/unit'
require '../lib/chi'

class PatNum
  extend PatientNumber
end

class Chi_test < Test::Unit::TestCase

  def test_invalid_chi

    assert_equal false, PatNum.chi?( "1234" ) 
    assert_equal false, PatNum.chi?( "0000000000" )
    assert_equal false, PatNum.chi?( "0601310021" )

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

    valid_chi.each{ |n| assert PatNum.chi? n }
     
  end

end
