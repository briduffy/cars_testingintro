class Car < ApplicationRecord
  validates :vin, uniqueness: true, presence: true

  #Car.by_model
  def self.by_model
    order(:model)
  end

  #Car.by_make
  def self.by_make
    order(:make)
  end

  #Car.by_price
  #Car.by_price(:desc)
  def self.by_price(direction = :asc)
    order(price: direction)
  end

  #@car.pain('Pink')
  def paint(color)
    self.update(color: color)
  end

  #@car.info
  def info
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  #@car.honk
  def honk
    'Beep beep!'
  end
end