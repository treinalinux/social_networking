# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Nome.new, vai salvar na memória, para salvar no banco deve usar o create.
  it 'admin is valid' do
    admin = Admin.new(name: 'Admin Root', email: 'admin@empresa.corp', password: '123456')

    expect(admin.email).to eql 'admin@empresa.corp'
    expect(admin).to be_valid
  end

  it 'admin is not valid' do
    admin = Admin.new(email: 'admin@empresa.corp')

    expect(admin).to_not be_valid
  end
end
