class Quote < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :favorite_quotes

  def readable_date
    if date 
      date.strftime ("%B %e, %Y")
    else 
      created_at.strftime("%B %e, %Y")
    end
  end
end
