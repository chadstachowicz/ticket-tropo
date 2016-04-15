class Ticket < ActiveRecord::Base
after_create :send_notification

def send_notification
  voice_token = '445955416e566d51474f7674576c756768494e787a6c4d535870736a5147636a4661467855544c6e4d474366'
  @result = HTTParty.get("https://api.tropo.com/1.0/sessions?action=create&token=#{voice_token}&numberToDial=" + User.find(self.assigned_to_user_id).mobile_number + '&ticketNumber=' + self.id.to_s)
end

end
