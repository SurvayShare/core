class Blob < ApplicationRecord
  before_save :hello

  def hello
    puts 'test'
  end
end
