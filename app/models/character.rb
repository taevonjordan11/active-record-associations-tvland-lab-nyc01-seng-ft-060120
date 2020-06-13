class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  # def build_show(name:)
  #   Show.new(name: ?)
  # end

  def build_network
    self.build_show.build_network(:call_letters => ??)
  end

end
