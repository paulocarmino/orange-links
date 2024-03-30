require "rails_helper"

RSpec.describe Metadata do
  describe "title attributes" do
    it "returns the title" do
      metadata = described_class.new("<title>Example</title>")
      expect(metadata.title).to eq("Example")
    end

    it "returns nil if no title" do
      metadata = described_class.new("")
      expect(metadata.title).to be_nil
    end
  end

  describe "description attributes" do
    it "returns the description" do
      metadata = described_class.new('<meta name="description" content="Example">')
      expect(metadata.description).to eq("Example")
    end

    it "returns nil if no description" do
      metadata = described_class.new("")
      expect(metadata.description).to be_nil
    end
  end

  describe "image attributes" do
    it "returns the image" do
      metadata = described_class.new('<meta property="og:image" content="http://example.com/image.jpg">')
      expect(metadata.image).to eq("http://example.com/image.jpg")
    end

    it "returns nil if no image" do
      metadata = described_class.new("")
      expect(metadata.image).to be_nil
    end
  end
end
