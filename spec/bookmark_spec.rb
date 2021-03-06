require 'bookmark'

describe Bookmark do

  describe "#create" do
    it "should add a bookmark to the database" do
      Bookmark.create('http://www.makersacademy.com')

      expect(Bookmark.all).to include('http://www.makersacademy.com')
    end
  end

  describe "#all" do
    it "returns a list of bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com')")
      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.google.com')")
      connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.destroyallsoftware.com')")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end
