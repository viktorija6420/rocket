require "minitest/autorun"
require_relative "rocket"
require 'pry'

class RocketTest < Minitest::Test
  # Write your tests here!
  def test_name
  #   #arrange
    @rocket = Rocket.new
    @rocket.name = "Mario"

  #   #act
    is_it_valid = @rocket.name

  #   #assert
    assert_equal(is_it_valid, "Mario")
  end

  def test_colour
    #arrange
    @rocket = Rocket.new
    @rocket.colour = "blue"

    #act
    is_it_valid = @rocket.colour

    #assert
    assert_equal(is_it_valid,"blue")
    end

    def test_flying_yes
      #arrange
      @rocket = Rocket.new(options={name:"b", flying:true, colour:"blue" })

      #act
      is_it_valid = @rocket.flying?

      #assert
      assert_equal(is_it_valid, true)
    end
  #
    def test_flying_no
      #arrange
      @rocket = Rocket.new(options={name:"b", flying:false, colour:"blue" })

      #act
      is_it_valid = @rocket.flying?

      #assert
      assert_equal(false, is_it_valid)
    end

    def test_lift_off_when_not_flying
      #arrange
      @rocket = Rocket.new(options={name:"b", flying:false, colour:"blue" })

      #act
      is_it_valid = @rocket.lift_off

      #assert
      assert_equal(true, is_it_valid)
    end

    def test_lift_off_when_flyng
      #arrange
      @rocket = Rocket.new(options={name:"b", flying:true, colour:"blue" })

      #act
      is_it_valid = @rocket.lift_off

      #assert
      assert_equal(false, is_it_valid)
    end

    def test_land_when_flying
      @rocket = Rocket.new(options={name:"b", flying:true, colour:"blue" })
      is_it_valid = @rocket.land
      assert_equal(true, is_it_valid)
    end

    def test_land_when_not_flying
      @rocket = Rocket.new(options={name:"b", flying:false, colour:"blue" })
      is_it_valid = @rocket.land
      assert_equal(false, is_it_valid)
    end

end
