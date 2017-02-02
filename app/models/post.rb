class Post < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :body, presence: true

  def reading_length
    num = self.body.split(" ").length

    if num.between?(1, 750)
      return "Short Post"
    elsif num.between?(751, 2500)
      return "Medium Post"
    elsif num >= 2501
      return "Long Post"
    end
  end

  def created
    self.created_at.strftime("%d %b. %Y")
  end
end
