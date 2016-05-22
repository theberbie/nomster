def luhn(number)

 numarray = number.to_s.split("")
 doubledarr = []
 
 numarray.each_with_index do |val, index|
  
  if index %2==0 

    doubledarr.push(val)

  else 
  doubler = index*2  
  
   if doubler >= 10 
   
   doubler = doubler - 9
   end
   end   
   doubledarr.push(doubler)


 end

