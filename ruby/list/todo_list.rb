class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    items = @list
  end

  def add_item(item)
    @list.push(item)
    @list
  end

end