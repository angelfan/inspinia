require 'rails_helper'

RSpec.describe 'AngelPasses', type: :request do
  describe 'GET /angel_passes' do
    it 'works! (now write some real specs)' do
      get angel_passes_path
      expect(response).to have_http_status(200)
    end
  end
end
