class Dairy < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true
    validates :proper_title_and_body

   private

    def proper_title_and_body
      unless title.starts_with?('今日')
        errors.add(:title, 'は「今日」は始めてください。')
      end

      unless body.end_with?('。')
        errors.add(:body,'は句点(。)で終了してください。')
      end
    end

end
