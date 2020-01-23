require_relative '../lib/crypto.rb'

describe "the scraping" do
  it "should return hash with value and symbol" do
    expect(array_cryptos(Bitcoin).to eq(BTC,$8,372.32)
  end
end
