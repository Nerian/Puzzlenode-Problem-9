require 'spec_helper'

describe "RT" do
  before(:each) { @commands = [5, 'RT 90'] }      
  describe "RT 0" do
    before(:each) {
      @commands << 'RT 0'
    }                     
    describe "FD 1" do
      it 'moves' do  
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','X','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do  
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                                   
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','X','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
        
      end        
    end       
  end
  describe "RT 45" do  
    before(:each) {
      @commands << 'RT 45'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           

        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','X','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','X','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']          
      end          
    end
    
  end
  describe "RT 90" do    
    before(:each) {
      @commands << 'RT 90'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','X','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','X','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end
    
  end
  describe "RT 135" do
    before(:each) {
      @commands << 'RT 135'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','X','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','X','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']        
      end          
    end
    
  end
  describe "RT 180" do  
    before(:each) {
      @commands << 'RT 180'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','X','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','X','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']          
      end          
    end
    
  end
  describe "RT 225" do   
    before(:each) {
      @commands << 'RT 225'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','X','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','X','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.'] 
      end
    end
    
  end  
             
  describe "RT 315" do  
    before(:each) {
      @commands << 'RT 315'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','X','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','X','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']         
      end          
    end    
  end  
  
  describe "LT 270" do  
    before(:each) {
      @commands << 'RT 270'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','X','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.'] 
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','X','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end    
  end        
  
  describe "LT 315" do  
    before(:each) {
      @commands << 'RT 315'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','X','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','.','.']
        @turtle_tracks.image[3].should == ['.','X','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end    
  end

  describe "RT 360" do    
    before(:each) {
      @commands << 'RT 360'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','X','X','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                           
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','X','X','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']          
      end          
    end
    
  end
end