module StoriesHelper
  def cover_image(story, size:[200,200])
    image_tag story.cover_image.variant(resize_to_fill: size),class:'story-cover' if story.cover_image.attached?
  end
end
