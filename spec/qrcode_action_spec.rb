describe Fastlane::Actions::QrcodeAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The qrcode plugin is working!")

      Fastlane::Actions::QrcodeAction.run(nil)
    end
  end
end
