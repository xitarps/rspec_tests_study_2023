describe "Satisfy Matcher" do
  context "10" do
    it { expect(10).to satisfy {|x| x % 2 == 0 } }
  end

  context 'a random number from 1 to 1000' do
    def math_magic(x) = ((((x*2)*5)/x)-7) == 3
    it { expect((1..1000).to_a).to all satisfy('applying mathmagic will always return 3'){ |x| math_magic(x) } }
  end
end
