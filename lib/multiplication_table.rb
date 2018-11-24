class MultiplicationTable
  attr_accessor :box_size

  # Example
  #     2  3  5  7
  #  2  4  6 10 14
  #  3  6  9 15 21
  #  5 10 15 25 35
  #  7 14 21 35 49

  def initialize(attributes = {})
    @numbers = attributes[:numbers]
    @box_size = get_box_size
  end

  def print
    puts display("") + @numbers.map{|n| display(n) }.join
    @numbers.each do |n|
      puts display(n) + @numbers.map{|m| display(n*m)}.join
    end
  end

  private

    def get_box_size
      (@numbers.max**2).to_s.length + 1
    end

    def display(num)
      " "*(@box_size-num.to_s.length) + num.to_s
    end
end
