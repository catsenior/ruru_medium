module UsersHelper
  def avatar(user, size:[200,200])
    image_tag user.avatar.variant(resize_to_fill: size),class:'user-avatar' if user.avatar.attached?
  end
end