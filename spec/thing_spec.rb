require_relative 'spec_helper'

describe Thing do

  before do
    map = Class.new do
      def insert_into(thing); end
    end

    stub_const('Map', map)
  end

  let(:thing) { Thing.new(x: 10, y: 5, label: 'T', map: Map.new) }

  it 'initialize attributes' do
    aggregate_failures do
      expect(thing.x).to eq(10)
      expect(thing.y).to eq(5)
      expect(thing.label).to eq('T')
    end
  end
end