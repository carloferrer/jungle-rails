require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }

    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

    it { is_expected.to have_secure_password }
    it { is_expected.to validate_length_of(:password).is_at_least(1).on(:create) }
  end

  context '.authenticate_with_credentials' do

  end

 end
