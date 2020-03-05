class Queue

  def initialize
    @store = Array.new(100)
    #you have to keep track of the front and back of where the 
    #circular buffer.
    @front = @back = -1
    #could also be writtne 
    
  end

  def enqueue(element)
    if @front == -1 && @back == -1
      @front = @back = 0
    end
    if @front == @back && !@store[@front].nil? # this means it is full and so we do nothing
      return 
    else
      @store[@back] = element 
      @back = (@back + 1) % @store.length
    end
    if @front < @back # how to keep track of the circle becuase don't want to print out nil's
      return @store[@front...@back]
    end
  end


  def dequeue
    if @store[@front].nil

   
  
  end

  def front
    raise NotImplementedError, "Not yet implemented"
  end

  def size
    raise NotImplementedError, "Not yet implemented"
  end

  def empty?

    raise NotImplementedError, "Not yet implemented"
  end

  def to_s
    return @store.to_s
  end
end
