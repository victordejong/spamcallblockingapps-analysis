package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesHelpCenterServiceFactory.class */
public final class ServiceModule_ProvidesHelpCenterServiceFactory implements AbstractC10866b<HelpCenterService> {
    public final Provider<HelpCenterCachingNetworkConfig> helpCenterCachingNetworkConfigProvider;
    public final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesHelpCenterServiceFactory(Provider<RestServiceProvider> provider, Provider<HelpCenterCachingNetworkConfig> provider2) {
        this.restServiceProvider = provider;
        this.helpCenterCachingNetworkConfigProvider = provider2;
    }

    public static ServiceModule_ProvidesHelpCenterServiceFactory create(Provider<RestServiceProvider> provider, Provider<HelpCenterCachingNetworkConfig> provider2) {
        return new ServiceModule_ProvidesHelpCenterServiceFactory(provider, provider2);
    }

    public static HelpCenterService providesHelpCenterService(RestServiceProvider restServiceProvider, Object obj) {
        HelpCenterService providesHelpCenterService = ServiceModule.providesHelpCenterService(restServiceProvider, (HelpCenterCachingNetworkConfig) obj);
        C10867c.m10383a(providesHelpCenterService, "Cannot return null from a non-@Nullable @Provides method");
        return providesHelpCenterService;
    }

    @Override // javax.inject.Provider
    public HelpCenterService get() {
        return providesHelpCenterService(this.restServiceProvider.get(), this.helpCenterCachingNetworkConfigProvider.get());
    }
}
