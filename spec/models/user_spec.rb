# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'user is valid' do
    user = User.new(
      name: 'Alan',
      email: 'alansalves@empresa.corp',
      phone: '21999009900',
      avatar: fixture_file_upload(Rails.root.join('spec', 'support', 'test-avatar.png'), 'image/png'),
      password: '123456'
    )

    expect(user).to be_valid
  end

  it 'user is not valid' do
    user = User.new(
      name: 'Alan',
      email: 'alansalves@empresa.corp',
      phone: '21999009900',
      password: '123456'
    )

    expect(user).to_not be_valid
  end

  it 'user should have a name' do
    user = User.new(
      email: 'alansalves@empresa.corp',
      phone: '21999009900',
      avatar: fixture_file_upload(Rails.root.join('spec', 'support', 'test-avatar.png'), 'image/png'),
      password: '123456'
    )

    expect(user).to_not be_valid
  end
end
