require 'spec_helper'

describe 'Parsers' do
  let(:md) { File.read('spec/fixtures/example.md') }

  let(:html)           { File.read('spec/fixtures/example.html') }
  let(:html_with_id)   { File.read('spec/fixtures/example_with_id.html') }
  let(:html_with_link) { File.read('spec/fixtures/example_with_link.html') }

  describe ':Redcarpet' do
    before { extend RMark::Parsers::Redcarpet }

    context 'default' do
      it { expect(parse(md)).to eq(html) }
    end

    context 'with option' do
      it { expect(parse(md, autolink: true)).to eq(html_with_link) }
    end
  end

  describe ':RDiscount' do
    before { extend RMark::Parsers::RDiscount }

    context 'default' do
      it { expect(parse(md)).to eq(html) }
    end

    context 'with option' do
      it { expect(parse(md, :autolink)).to eq(html_with_link) }
    end
  end

  describe ':Kramdown' do
    before { extend RMark::Parsers::Kramdown }

    context 'default' do
      it { expect(parse(md)).to eq(html_with_id) }
    end

    context 'with option' do
      it { expect(parse(md, auto_ids: false)).to eq(html) }
    end
  end
end
