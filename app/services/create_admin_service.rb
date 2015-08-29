class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV['GMAIL_USERNAME']) do |user|
        user.password = ENV['ADMIN_PASSWORD']
        user.password_confirmation = ENV['ADMIN_PASSWORD']
        user.admin!
      end
  end
end
