class PlayerController < ApplicationController
  
  @card = nil;
  def index
    @card = Array.new(5) {  Array.new(5)  };
  	$i=0;
  	$j=0;
  	tmp=0;
  	for $i in 0..4
  		for $j in 0..4
        @card[$j][$i] = -1;
        while checkExistedNumberInArray((tmp=rand(15*$i+1..15*$i+15)),$j,$i) == true
        end
        @card[$j][$i] = tmp;
      end 
 		end
    @card[2][2] = 0;
 	end	

  def checkExistedNumberInArray(num, j, i)
    tmp=0;
    for tmp in 0..j
     if @card[tmp][i] == num
      return true;
     end
    end
    return false;
  end

end