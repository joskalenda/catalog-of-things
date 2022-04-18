require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new('Dean', 'Kutz')
  end

  context '#initialize' do
    it 'author should be an instance of Author' do
      expect(@author).to be_an_instance_of Author
    end

    it 'should have a first_name instance variable' do
      f_name = @author.first_name
      expect(f_name).to eq 'Dean'
    end

    it 'should have a first_name instance variable' do
      l_name = @author.last_name
      expect(l_name).to eq 'Kutz'
    end
  end

  context 'testing instance methods' do
    it 'increase author items count by 1' do
      author_items = @author.items.size
      item_instance = Item.new('2011/10/01', false, @author)
      @author.add_item(item_instance)
      expect(items).to eq (items + 1)
    end

    it 'item author should be instance of Item class' do
      item_instance = Item.new('2011/10/01', false, @author)
      @author.add_item(item_instance)
      author_item = @author.item.first
      expect(author).to be instance_of Item
    end
  end
end