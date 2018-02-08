describe 'Song' do
  before do
    @song = Song.create(name: "Forever")
  end

  after do
    clean_database
  end

  it 'has a name' do
    expect(Song.where(name: "Forever").first).to eq(@song)
  end

end

# it "has associated characters in an array" do
#     # Hint: think about what migration you'll need to write so that an actor can have many characters.
#     # Where will the association foreign key go?
#     emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
#     khaleesi = Character.new(:name => "Khaleesi")
#     khaleesi.actor = emilia
#     khaleesi.save
#
#     khaleesi.reload
#     expect(emilia.characters).to include(khaleesi)
#     expect(khaleesi.actor).to eq(emilia)
#   end
