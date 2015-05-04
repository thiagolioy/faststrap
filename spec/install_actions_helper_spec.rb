describe Faststrap do
  describe Faststrap::InstallActions do

    it ".load_default_actions" do
      expect(Faststrap::InstallActions.load_default_actions.count).to be > 1
    end

    let(:install_actions_ordered) do
      [
         Faststrap::InstallActions::HomebrewInstallAction,
         Faststrap::InstallActions::XcodeCmdToolsInstallAction,
         Faststrap::InstallActions::GitInstallAction,
         Faststrap::InstallActions::CocoapodsInstallAction,
         Faststrap::InstallActions::XctoolInstallAction,
         Faststrap::InstallActions::FastlaneInstallAction,
         Faststrap::InstallActions::JenkinsInstallAction,
         Faststrap::InstallActions::RestClientInstallAction,
         Faststrap::InstallActions::BashCompletionInstallAction,
         Faststrap::InstallActions::CarthageInstallAction,
         Faststrap::InstallActions::CalabashBundleInstallAction
      ]
    end

    let(:install_actions_unordered) do
      [
        Faststrap::InstallActions::BashCompletionInstallAction,
        Faststrap::InstallActions::HomebrewInstallAction,
        Faststrap::InstallActions::XcodeCmdToolsInstallAction,
        Faststrap::InstallActions::GitInstallAction,
        Faststrap::InstallActions::CarthageInstallAction,
        Faststrap::InstallActions::CalabashBundleInstallAction,
        Faststrap::InstallActions::CocoapodsInstallAction,
        Faststrap::InstallActions::XctoolInstallAction,
        Faststrap::InstallActions::FastlaneInstallAction,
        Faststrap::InstallActions::JenkinsInstallAction,
        Faststrap::InstallActions::RestClientInstallAction
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
