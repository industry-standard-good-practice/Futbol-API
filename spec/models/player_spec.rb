require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'New Player Validations' do
    let(:name) { 'test name' }
    let(:height) { '5 ft 3 in' }
    let(:weight) { '174 lb' }
    let(:age) { 28 }
    let(:country) { 'Germany' }
    let(:shirt) { 1 }
    let(:position) { 'keeper' }
    let(:player_params) do
      {
        name: name,
        height: height,
        weight: weight,
        age: age,
        country: country,
        shirt: shirt,
        position: position
      }
    end
    context 'when valid attributes are supplied' do
      subject { Player.new(player_params) }

      it { is_expected.to be_valid }
    end
    context 'when invalid attributes are supplied' do
      context 'and name is invalid' do
        subject { Player.new(player_params) }
        let(:name) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and height is invalid' do
        subject { Player.new(player_params) }
        let(:height) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and weight is invalid' do
        subject { Player.new(player_params) }
        let(:weight) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and age is invalid' do
        subject { Player.new(player_params) }
        let(:age) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and country is invalid' do
        subject { Player.new(player_params) }
        let(:country) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and shirt is invalid' do
        subject { Player.new(player_params) }
        let(:shirt) { nil }

        it { is_expected.to_not be_valid }
      end

      context 'and position is invalid' do
        subject { Player.new(player_params) }
        let(:position) { nil }

        it { is_expected.to_not be_valid }
      end
    end
  end
end
