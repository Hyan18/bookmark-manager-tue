feature "Viewing bookmarks" do
  scenario "visit bookmarks page" do

    Bookmark.create('http://www.makersacademy.com')
    Bookmark.create('http://www.google.com')
    Bookmark.create('http://www.destroyallsoftware.com')

    visit '/bookmarks'

    expect(page). to have_content("http://www.makersacademy.com")
    expect(page). to have_content("http://www.google.com")
    expect(page). to have_content("http://www.destroyallsoftware.com")
  end
end
