# encoding: utf-8

title 'go'

control 'go-00' do
  impact 1.0
  title 'Golang installed version is correct'

  describe command('go version') do
    its('stdout') { should match (/go1\.\d+\.\d+/) }
  end
end