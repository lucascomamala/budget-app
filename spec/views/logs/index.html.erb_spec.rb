require 'rails_helper'

RSpec.describe 'logs/index', type: :view do
  before(:each) do
    assign(:logs, [
             Log.create!(
               name: 'Name',
               amount: '9.99',
               user: nil
             ),
             Log.create!(
               name: 'Name',
               amount: '9.99',
               user: nil
             )
           ])
  end

  it 'renders a list of logs' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('9.99'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
