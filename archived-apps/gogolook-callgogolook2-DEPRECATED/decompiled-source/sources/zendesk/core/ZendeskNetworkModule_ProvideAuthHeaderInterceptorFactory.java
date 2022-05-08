package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory implements AbstractC10866b<ZendeskAuthHeaderInterceptor> {
    public final Provider<IdentityManager> identityManagerProvider;

    public ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory(Provider<IdentityManager> provider) {
        this.identityManagerProvider = provider;
    }

    public static ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory create(Provider<IdentityManager> provider) {
        return new ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory(provider);
    }

    public static ZendeskAuthHeaderInterceptor provideAuthHeaderInterceptor(Object obj) {
        ZendeskAuthHeaderInterceptor provideAuthHeaderInterceptor = ZendeskNetworkModule.provideAuthHeaderInterceptor((IdentityManager) obj);
        C10867c.m10383a(provideAuthHeaderInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideAuthHeaderInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskAuthHeaderInterceptor get() {
        return provideAuthHeaderInterceptor(this.identityManagerProvider.get());
    }
}
