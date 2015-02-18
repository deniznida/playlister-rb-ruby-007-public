describe "Song" do
  let(:artist) {Artist.new}
  let(:song) {Song.new}
  let(:genre) {Genre.new}

  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song.name = "Gimme Shelter"
    expect(song.name).to eq("Gimme Shelter")
  end

  it "can have a genre" do
    genre = Genre.new.tap {|g| g.name = "Rock & Roll"}
    expect(genre.name).to eq("Rock & Roll")
  end
  
  it "has an artist" do
    song.artist = "Rolling Stones"
    expect(song.artist).to eq("Rolling Stones")
  end
end