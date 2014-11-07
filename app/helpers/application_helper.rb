module ApplicationHelper

  include ApplicationHelper::ParentLayout
  include ApplicationHelper::Header
  include ApplicationHelper::Link

  if Rails.env.development?
    include ApplicationHelper::Design
  end

end
