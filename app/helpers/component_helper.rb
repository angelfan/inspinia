module ComponentHelper
  def render_ibox(box_title: nil, box_desc: nil, &block)
    render partial: 'components/ibox',
           locals: {
             box_title: box_title,
             box_desc: box_desc,
             content: capture(&block)
           }
  end
end
