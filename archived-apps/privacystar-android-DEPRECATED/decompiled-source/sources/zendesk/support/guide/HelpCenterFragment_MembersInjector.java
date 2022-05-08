package zendesk.support.guide;

import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.HelpCenterProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterFragment_MembersInjector.class */
public final class HelpCenterFragment_MembersInjector implements MembersInjector<HelpCenterFragment> {
    private final Provider<HelpCenterProvider> helpCenterProvider;
    private final Provider<NetworkInfoProvider> networkInfoProvider;

    public HelpCenterFragment_MembersInjector(Provider<HelpCenterProvider> provider, Provider<NetworkInfoProvider> provider2) {
        this.helpCenterProvider = provider;
        this.networkInfoProvider = provider2;
    }

    public static MembersInjector<HelpCenterFragment> create(Provider<HelpCenterProvider> provider, Provider<NetworkInfoProvider> provider2) {
        return new HelpCenterFragment_MembersInjector(provider, provider2);
    }

    public static void injectHelpCenterProvider(HelpCenterFragment helpCenterFragment, HelpCenterProvider helpCenterProvider) {
        helpCenterFragment.helpCenterProvider = helpCenterProvider;
    }

    public static void injectNetworkInfoProvider(HelpCenterFragment helpCenterFragment, NetworkInfoProvider networkInfoProvider) {
        helpCenterFragment.networkInfoProvider = networkInfoProvider;
    }

    public void injectMembers(HelpCenterFragment helpCenterFragment) {
        injectHelpCenterProvider(helpCenterFragment, this.helpCenterProvider.get());
        injectNetworkInfoProvider(helpCenterFragment, this.networkInfoProvider.get());
    }
}
