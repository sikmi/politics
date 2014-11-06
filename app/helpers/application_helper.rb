module ApplicationHelper

  include ApplicationHelper::HeaderHelper

  # layoutの親
  def parent_layout(layout)
    @view_flow.set(:layout, output_buffer)
    output = render(:file => layout)
    self.output_buffer = ActionView::OutputBuffer.new(output)
  end

end
