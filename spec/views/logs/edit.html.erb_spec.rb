require 'rails_helper'

RSpec.describe 'logs/edit', type: :view do
  let(:log) do
    Log.create!(
      name: 'MyString',
      amount: '9.99',
      user: nil
    )
  end

  before(:each) do
    assign(:log, log)
  end

  it 'renders the edit log form' do
    render

    assert_select 'form[action=?][method=?]', log_path(log), 'post' do
      assert_select 'input[name=?]', 'log[name]'

      assert_select 'input[name=?]', 'log[amount]'

      assert_select 'input[name=?]', 'log[user_id]'
    end
  end
end
