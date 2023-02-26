module MathMagicHelper
  # module ClassMethods
  # end

  # module InstanceMethods
  # end

  # def self.included(receiver)
  #   receiver.extend         ClassMethods
  #   receiver.send :include, InstanceMethods
  # end

  # def math_magic(x) = ((((x*2)*5)/x)-7) == 3
    def math_magic(x)
      ((((x*2)*5)/x)-7) == 3
    end
end
