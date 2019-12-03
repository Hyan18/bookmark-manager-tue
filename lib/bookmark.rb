require 'pg'

class Bookmark

  def self.all
    con = PG.connect :dbname => 'bookmark_manager'

    rs = con.exec "SELECT url FROM bookmarks"

    urls = rs.to_a.map { |row| row["url"] }
  end

end
