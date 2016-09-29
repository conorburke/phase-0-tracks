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

  def delete_item(item)
    @list.delete(item)
    @list
  end

  def get_item(index)
    @list[index]
  end


end