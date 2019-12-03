feature "Viewing bookmarks" do
  scenario "visit bookmarks page" do
    visit '/bookmarks'
    expect(page). to have_content("http://www.makersacademy.com")
    expect(page). to have_content("http://www.google.com")
    expect(page). to have_content("http://www.destroyallsoftware.com")
  end
end
