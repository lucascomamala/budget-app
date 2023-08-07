require 'rails_helper'

RSpec.describe 'logs/show', type: :view do
  before(:each) do
    assign(:log, Log.create!(
                   name: 'Name',
                   amount: '9.99',
                   user: nil
                 ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
