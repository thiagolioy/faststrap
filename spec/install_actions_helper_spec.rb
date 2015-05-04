describe Faststrap do
  describe Faststrap::InstallActions do

    it ".load_default_actions" do
      expect(Faststrap::InstallActions.load_default_actions.count).to be > 1
    end

    let(:install_actions_ordered) do
      [
        Faststrap::InstallActions::HomebrewInstallAction,
        Faststrap::InstallActions::BashCompletionInstallAction
      ]
    end

    let(:install_actions_unordered) do
      [
        Faststrap::InstallActions::BashCompletionInstallAction,
        Faststrap::InstallActions::HomebrewInstallAction
      ]
    end

    it ".list" do
      expect(Faststrap::InstallActions.list).to eq install_actions_ordered
    end

    it ".sort_actions" do
      expect(Faststrap::InstallActions.sort_actions(install_actions_unordered)).to eq install_actions_ordered
    end


  end
end
