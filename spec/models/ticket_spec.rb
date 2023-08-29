require 'rails_helper'

RSpec.describe Ticket, type: :model do
  before do
    @ticket = create(:ticket)
  end
  it 'is valid' do
    expect(@ticket).to be_valid
  end
end
