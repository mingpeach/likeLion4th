class NumberController < ApplicationController
    def win
        @num = [
           "1","2","3","4","5","6","7","8","9","10",
           "11","12","13","14","15","16","17","18","19","20", 
           "21","22","23","24","25","26","27","28","29","30",  
           "31","32","33","34","35","36","37","38","39","40",  
           "41","42","43","44","45" 
        ]
        
        @select1 = @num.sample
        @image1 = "yellow_" + @select1 + ".png"
        
        @select2 = @num.sample
        @image2 = "yellow_" + @select2 + ".png"
        
        @select3 = @num.sample
        @image3 = "blue_" + @select3 + ".png"        
        
        @select4 = @num.sample
        @image4 = "blue_" + @select4 + ".png"        
        
        @select5 = @num.sample
        @image5 = "vio_" + @select5 + ".png"        
        
        @select6 = @num.sample
        @image6 = "vio_" + @select6 + ".png"        
        
        @select7 = @num.sample
        @image7 = "pink_" + @select7 + ".png" 
        
    end
end
