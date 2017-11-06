require 'rails_helper'

RSpec.describe AngelPassesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/angel_passes').to route_to('angel_passes#index')
    end

    it 'routes to #new' do
      expect(get: '/angel_passes/new').to route_to('angel_passes#new')
    end

    it 'routes to #show' do
      expect(get: '/angel_passes/1').to route_to('angel_passes#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/angel_passes/1/edit').to route_to('angel_passes#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/angel_passes').to route_to('angel_passes#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/angel_passes/1').to route_to('angel_passes#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/angel_passes/1').to route_to('angel_passes#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/angel_passes/1').to route_to('angel_passes#destroy', id: '1')
    end

  end
end
