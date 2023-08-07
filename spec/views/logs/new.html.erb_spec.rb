require 'rails_helper'

RSpec.describe 'logs/new', type: :view do
  before(:each) do
    assign(:log, Log.new(
                   name: 'MyString',
                   amount: '9.99',
                   user: nil
                 ))
  end

  it 'renders new log form' do
    render

    assert_select 'form[action=?][method=?]', logs_path, 'post' do
      assert_select 'input[name=?]', 'log[name]'

      assert_select 'input[name=?]', 'log[amount]'

      assert_select 'input[name=?]', 'log[user_id]'
    end
  end
end
