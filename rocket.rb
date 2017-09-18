require 'pry'
class Rocket
  def initialize(options = {})
    @name = options[:name] || random_name
    @colour = options[:colour] || random_colour
    # binding.pry
    @flying = options[:flying] || false
  end

  def name
    @name
  end

  def name=(new_name) #returns the name. If you make a rocket and you
                      #call this method does it return the name? Test that.give
                      #it a different name, test.See if it works.
    @name = new_name
  end

  def colour
    @colour
  end

  def colour=(new_colour)
    @colour = new_colour
  end

  def flying?
    @flying
  end

  def lift_off
    if flying?
      return false
    else
      @flying = true
      return true
    end
  end

  def land
    if flying?
      @flying = false
      return true
    else
      return false
    end
  end

  def status
    if flying?
      return "Rocket #{name} is flying through the sky!"
    else
      return "Rocket #{name} is ready for lift off!"
    end
  end

  private

  def random_name
    prefixes = ["aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn", "aquarius", "pisces"]
    suffixes = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix", "x"]

    return "#{prefixes.sample.capitalize} #{suffixes.sample.upcase}"
  end

  def random_colour
    colour_list = ["red", "yellow", "blue", "green", "purple", "orange"]
    return colour_list.sample
  end
end
