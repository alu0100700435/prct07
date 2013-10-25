# Clase Fractiom

require "gcd.rb"

class Fraction
  
  attr_accessor :num, :den  
  
  def initialize(num, den)
    
    com = gcd(num, den)
    if (den < 0)
      @num, @den =  ((-1*num)/com), ((-1*den)/com)
    else 
      @num, @den =  num/com, den/com
    end
  end
  
  def num() 
    @num
  end

  def den()
    @den
  end
  
  def to_string()
    "#{@num}/#{@den}"
  end
 
   def to_float()
     flotante =@num.to_f/@den.to_f
     flotante
   end
  
   def +(other)
    Fraction.new(@num* other.den + other.num*@den, @den * other.den)
   end
   
  def -(other)
    Fraction.new(@num* other.den - other.num*@den, @den * other.den)
  end
 
  def *(other)
     Fraction.new(@num * other.num, @den *other.den)
  end
  
  def /(other)
    Fraction.new(@num * other.den, @den *other.num)
  end
  
  def %(other)
    a = (@num*other.den).to_f
    b = (@den * other.num).to_f
    c = a%b
    c
  end
  
  def abs()
     Fraction.new(@num.abs, @den.abs)
  end
  
  def -@()
    Fraction.new(@num * -1, @den)
  end
   
   def reciprocal()
     Fraction.new(@den, @num)
   end
   
  def ==(other)
    if(@num == other.num) && (@den == other.den)
      true
    else
      false
    end
  end
  
  def <(other)    
    to_float() < other.to_float()    
  end
  def >(other)    
    to_float() > other.to_float()    
  end
  def <=(other)    
    to_float() <= other.to_float()    
  end
  def >=(other)    
    to_float() >= other.to_float()    
  end
      
end