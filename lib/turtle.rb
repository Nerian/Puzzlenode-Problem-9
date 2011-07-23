class Turtle
  attr_accessor :x, :y, :angle, :image
  
  def initialize(x, y, image, angle=90)    
    @x = x
    @y = x        
    @image = image
    @angle = angle.to_i
  end     
    
  def forward(units)
    units = units.to_i
    puts "moving forward, angle #{@angle}" 
    units.times do     
      if @angle == 0 or @angle == -360
        @x += 1                       
      end
      if @angle == 45 or @angle == -315
        @x += 1
        @y -= 1
      end
      if @angle == 90 or @angle == -270
        @y -= 1 
      end
      if @angle == 135 or @angle== -225
        @x -= 1
        @y -= 1                    
      end
      if @angle == 180 or @angle == -180
        @x -= 1
      end
      if @angle==225 or @angle == -135
        @x -= 1
        @y += 1
      end
      if @angle == 270 or @angle== -90
        @y += 1
      end
      if @angle==315 or @angle== -45    
        @x += 1
        @y += 1
      end
      if @angle == 360
        @x += 1  
      end 
      image[@y][@x] = 'x'     
    end
  end    
  
  def backward(units)      
    units = units.to_i
    puts "moving backwards, angle #{@angle}"   
    units.times do          
      if @angle == 0 or @angle == -360
        @x -= units                       
      end
      if @angle == 45 or @angle == -315
        @x -= 1
        @y += 1
      end
      if @angle == 90 or @angle == -270
        @y += 1 
      end
      if @angle == 135 or @angle== -225
        @x += 1
        @y += 1                    
      end
      if @angle == 180 or @angle == -180
        @x += 1
      end
      if @angle==225 or @angle == -135
        @x += 1
        @y -= 1
      end
      if @angle == 270 or @angle== -90
        @y -= 1
      end
      if @angle==315 or @angle== -45    
        @x -= 1
        @y -= 1
      end
      if @angle == 360
        @x -= 1  
      end
      image[@y][@x] = 'x'  
    end  
  end
  
  def rotate_clockwise(angle)
    angle = angle.to_i
    print "Rotating from #{@angle}"
    @angle -= angle      
    puts " to #{@angle}"
  end

  def rotate_counter_clockwise(angle)
    angle = angle.to_i
    print "Rotating from #{@angle}"
    @angle += angle                
    puts " to #{@angle}"
  end  
end