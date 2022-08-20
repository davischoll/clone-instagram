module ApplicationHelper
  def embedded_svg(path)
    File.open("app/assets/images/#{path}", "rb") { |file| raw(file.read) }
  end

  def user_avatar(user)
    image_tag user.avatar.attached? ? user.avatar : "default-avatar.jpg", class: "photo"
  end
end
