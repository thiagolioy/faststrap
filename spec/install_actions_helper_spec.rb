describe Faststrap do
  describe Faststrap::InstallActions do

    it "#load_default_actions" do
      expect(Faststrap::InstallActions.load_default_actions.count).to be > 1
    end

  end
end
