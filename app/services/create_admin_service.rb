class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV['gmail_username']) do |user|
        user.password = ENV['admin_password']
        user.password_confirmation = ENV['admin_password']
        user.admin!
      end
  end
end
