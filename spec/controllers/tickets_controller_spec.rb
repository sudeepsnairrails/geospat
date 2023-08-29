require 'rails_helper'

describe TicketsController do

  describe 'GET #index' do
    context 'when the page loads successfully' do
        it 'responds with http ok' do
            expect(response).to have_http_status(:ok)
        end
    end
  end
end