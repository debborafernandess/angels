module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://s.gravatar.com/avatar/03f760e5d701efa160e01b2176935b8b?s=80"
  end
end
