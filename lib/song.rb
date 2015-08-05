require 'tempfile'

class Song
  attr_accessor :title, :artist

  def serialize
    filename = "#{@artist.name} - #{@title.gsub(/ /,'_').downcase}"
    file = Tempfile.new([filename, '.txt'], './tmp')
    file.write("#{@artist.name} - #{title}")
    file.close
  end
end
