require "rails_helper"

RSpec.describe ShortCode do
  describe ".encode" do
    it "returns '0' for 0" do
      expect(described_class.encode(0)).to eq("0")
    end

    it "returns '1' for 1" do
      expect(described_class.encode(1)).to eq("1")
    end

    it "returns '10' for 62" do
      expect(described_class.encode(62)).to eq("10")
    end

    it "returns '100' for 3844" do
      expect(described_class.encode(3844)).to eq("100")
    end

    it "returns 'gw' for 1024" do
      expect(described_class.encode(1024)).to eq("gw")
    end

    it "returns '4c91' for 999_999" do
      expect(described_class.encode(999_999)).to eq("4c91")
    end
  end

  describe ".decode" do
    it "returns 0 for '0'" do
      expect(described_class.decode("0")).to eq(0)
    end

    it "returns 1 for '1'" do
      expect(described_class.decode("1")).to eq(1)
    end

    it "returns 62 for '10'" do
      expect(described_class.decode("10")).to eq(62)
    end

    it "returns 3844 for '100'" do
      expect(described_class.decode("100")).to eq(3844)
    end

    it "returns 1024 for 'gw'" do
      expect(described_class.decode("gw")).to eq(1024)
    end

    it "returns 999_999 for '4c91'" do
      expect(described_class.decode("4c91")).to eq(999_999)
    end
  end
end
