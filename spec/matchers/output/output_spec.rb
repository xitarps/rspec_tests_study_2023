describe "Output Matcher" do
  it { expect{puts 'Xita'}.to output.to_stdout }
  it { expect{print 'Xita'}.to output('Xita').to_stdout }
  it { expect{puts 'Xita'}.to output(/Xita/).to_stdout }

  it { expect{warn 'Xita'}.to output.to_stderr }
  it { expect{warn 'Xita'}.to output("Xita\n").to_stderr }
  it { expect{warn 'Xita'}.to output(/Xita/).to_stderr }
end
