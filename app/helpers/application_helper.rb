module ApplicationHelper

  include ApplicationHelper::ParentLayoutHelper
  include ApplicationHelper::HeaderHelper
  include ApplicationHelper::LinkHelper

  if Rails.env.development?
    include ApplicationHelper::DesignHelper
  end

end
