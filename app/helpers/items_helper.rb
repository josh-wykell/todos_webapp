module ItemsHelper

  def completed(item)
    item.is_complete ? 'x' : ' '
  end
end
