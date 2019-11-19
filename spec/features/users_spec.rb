require 'rails_helper'

RSpec.feature "Users", type: :feature do

  # 追加
  scenario 'ドラッグ&ドロップのテスト', js: true do
    visit users_index_path 
    first_user = all('li')[0]
    second_user = all('li')[1]
  
    all('li')[0].drag_to all('li')[1]
    expect(all('li')[1].text).to eq '鈴木さん' 
  end
end
