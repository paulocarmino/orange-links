require "action_view/helpers/text_helper"

module TruncateHelper
  include ActionView::Helpers::TextHelper

  def truncate_title(text, length = 45)
    truncate(text, length: length, omission: "...")
  end
end
