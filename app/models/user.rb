class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    enum plan: { free: 0, personal: 1, team: 2 }

    def subscribed?
        personal? || team?
    end

    def not_subscribed?
        !subscribed?
    end
end
