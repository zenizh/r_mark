require 'spec_helper'

describe 'MarkdownPages' do
  describe '#direct' do
    it 'should be rendered' do
      visit '/direct'

      expect(page).to have_selector('h1', text: 'Direct')
    end
  end

  describe '#partial' do
    it 'should be rendered' do
      visit '/partial'

      expect(page).to have_selector('h1', text: 'Partial')
    end
  end
end
