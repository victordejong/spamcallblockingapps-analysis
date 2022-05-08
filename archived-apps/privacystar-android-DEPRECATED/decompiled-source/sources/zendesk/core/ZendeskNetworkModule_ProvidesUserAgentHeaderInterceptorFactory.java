package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory implements Factory<UserAgentAndClientHeadersInterceptor> {
    private final ZendeskNetworkModule module;

    public ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory(ZendeskNetworkModule zendeskNetworkModule) {
        this.module = zendeskNetworkModule;
    }

    public static Factory<UserAgentAndClientHeadersInterceptor> create(ZendeskNetworkModule zendeskNetworkModule) {
        return new ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory(zendeskNetworkModule);
    }

    public static UserAgentAndClientHeadersInterceptor proxyProvidesUserAgentHeaderInterceptor(ZendeskNetworkModule zendeskNetworkModule) {
        return zendeskNetworkModule.providesUserAgentHeaderInterceptor();
    }

    @Override // javax.inject.Provider
    public UserAgentAndClientHeadersInterceptor get() {
        return (UserAgentAndClientHeadersInterceptor) Preconditions.checkNotNull(this.module.providesUserAgentHeaderInterceptor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
