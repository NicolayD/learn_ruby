class Timer
  
  attr_accessor :seconds, :minutes, :hours

  def initialize

  	@seconds = 0

  end

  def seconds

  	@seconds
  end


  def time_string

  		@minutes = "00"
  		@hours = "00"

  	if @seconds >= 4000

  		@hours = (@seconds / 60) / 60
  		@minutes = (@seconds / 60) % 60
  		@seconds = @seconds - @hours * 60 * 60 - @minutes * 60

  		if @minutes < 10
  			@minutes = "0#{@minutes}"
  		else 
  			@minutes = "#{@minutes}"
  		end

  		if @seconds < 10
  			@seconds = "0#{@seconds}"
  		else
  			@seconds = "#{@seconds}"
  		end

  		if @hours < 9
  			@hours = "0#{@hours}"
  		else
  			@hours = "#{@hours}"
  		end

  	elsif @seconds >= 60

  		@minutes = @seconds / 60

  		@seconds = @seconds % 60

  		if @seconds < 10
  			@seconds = "0#{@seconds}"
  		else
  			@seconds = "#{@seconds}"
  		end

  		if @minutes < 9
  			@minutes = "0#{@minutes}"
  		else
  			@minutes = "#{@minutes}"
  		end

  	else
  		if @seconds >= 10
  			@seconds = "#{@seconds}"
  		else
  			@seconds = "0#{@seconds}"
  		end

  	end

  	@hours + ":" + @minutes + ":" + @seconds

  end
end
