class CreateUserService
  def call
    arr = Array.new(5) {|index| index}
    arr.each do |index|
      User.find_or_create_by!(email: "user#{50+ index}@example.com") do |user|
        user.password = 'qwerty'
        user.password_confirmation = 'qwerty'
        user.name = "User #{50+ index}"
      end
    end
  end

end
