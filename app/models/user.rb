class UserNotFoundError < StandardError; end

class User
  def self.find(id)
    raise UserNotFoundError, "User with id '#{id}' not found."
  end
end
