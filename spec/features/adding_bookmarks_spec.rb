feature "adding bookmarks" do
  scenario "adding one bookmark via a form" do
    visit '/add-bookmark'
    fill_in :url, with: "http://askjeeves.com"
    click_button 'Add'
    expect(page).to have_content("http://askjeeves.com")
  end

  scenario "adding a second bookmark via a form" do
    visit '/add-bookmark'
    fill_in :url, with: "http://askjeeves.com"
    click_button 'Add'
    visit '/add-bookmark'
    fill_in :url, with: "http://twitter.com"
    click_button 'Add'
    expect(page).to have_content("http://askjeeves.com")
    expect(page).to have_content("http://twitter.com")
  end
end