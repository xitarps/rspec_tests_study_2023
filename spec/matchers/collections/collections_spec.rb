describe "Collections matchers", :collection do           # rspec-t collection
# describe "Collections matchers", type: 'collection' do  # rspec type:collection
# describe "Collections matchers", collection: true do    # rspec -t collection
  subject { [1, 7, 9] }
  it { is_expected.to all (be_odd).and be_an(Integer)}
  it { expect(['Rails', 'Ruby']).to all (include('R').and be_a(String))}
end
