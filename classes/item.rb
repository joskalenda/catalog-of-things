require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :publish_date, :author

  def initialize(publish_date, archived, author)
    @id = rand(1..100)
    @publish_date = Date.parse(publish_date)
    @archived = archived
    @author = author
  end

  def can_be_archived?
    date_published = publish_date.year
    date_now = Date.today.year
    num_of_years = date_now - date_published
    return true unless num_of_years < 10

    false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private :can_be_archived?
end