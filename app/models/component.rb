class Component < ApplicationRecord

  include PgSearch::Model
  validates_presence_of :name

  before_save :add_or_substract_quantity
  
  pg_search_scope :search, against: [:category, :name, :value, :size, :termination_mounting_style, :supplier, :order_code]


  def self.text_search(query)
    if query.present?
      where("category @@ :q or name @@ :q or value @@ :q or size @@ :q or 
      termination_mounting_style @@ :q or supplier @@ :q or order_code @@ :q", q: query)
    else
      all.order(:category)
    end
  end
 
private
def add_or_substract_quantity()
  self.quantity = self.quantity + self.add_substract
end
end


# def stocked(quatity)
    #stocked = quatity + ne