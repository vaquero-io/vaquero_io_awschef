require 'spec_helper'
require 'pathname'
require 'yaml'
require 'vaquero_io_awschef'

describe 'base provider' do
  let(:test_class) { Class.new { extend VaqueroIo::ProviderPluginExtensions } }
  let(:providerfile) do
    Pathname.new(File.expand_path('../../../', __FILE__)) +
      'vaquero_io_awschef' + 'lib/' + 'vaquero_io_awschef'
  end

  it '.version should return the version' do
    expect(test_class.version).to eq '2.0.0'
  end

  it '.name should return the name' do
    expect(test_class.name).to eq 'vaquero_io_awschef'
  end

  it '.definition should load providerfile.yml without error' do
    expect { test_class.definition(providerfile) }.to_not raise_error
  end
end
