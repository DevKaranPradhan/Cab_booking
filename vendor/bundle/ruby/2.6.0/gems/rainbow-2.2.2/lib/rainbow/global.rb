require_relative 'wrapper'

module Rainbow

  def self.global
    @global ||= Wrapper.new
  end

  def self.enabled
    global.enabled
  end

  def self.enabled=(value)
    global.enabled = value
  end

end

def Rainbow(string)
  Rainbow.global.wrap(string.to_s)
end
