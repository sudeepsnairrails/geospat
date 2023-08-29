require 'rails_helper'

RSpec.describe Excavator, type: :model do
  before do
    @excavator = create(:excavator)
  end

  describe '.ticket_id' do
    it 'is invalid when nil' do
      @excavator.update(ticket_id: nil)
      expect(@excavator).not_to be_valid
    end
    it 'is valid when not nil' do
      expect(@excavator).to be_valid
    end
  end
end