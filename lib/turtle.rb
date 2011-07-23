class Turtle
  attr_accessor :x, :y, :angle, :image
  
  def initialize(x, y, image, angle=90)    
    @x = x
    @y = x        
    @image = image
    @angle = angle.to_i
  end     
    
  def move(units, options )       
    units = units.to_i                                   
    
    direction = options[:direction] == :backward ? -1 : 1   
              
    puts "moving #{units.abs} #{options[:direction].to_s}, angle #{@angle}" 
    units.abs.times do     
      if @angle == 0 or @angle == -360
        @x += 1 * direction                       
      end
      if @angle == 45 or @angle == -315
        @x += 1 * direction
        @y -= 1 * direction
      end
      if @angle == 90 or @angle == -270
        @y -= 1 * direction
      end
      if @angle == 135 or @angle== -225
        @x -= 1 * direction
        @y -= 1 * direction
      end
      if @angle == 180 or @angle == -180
        @x -= 1 * direction
      end
      if @angle==225 or @angle == -135
        @x -= 1 * direction
        @y += 1 * direction
      end
      if @angle == 270 or @angle== -90
        @y += 1 * direction
      end
      if @angle==315 or @angle== -45    
        @x += 1 * direction
        @y += 1 * direction
      end
      if @angle == 360
        @x += 1 * direction
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