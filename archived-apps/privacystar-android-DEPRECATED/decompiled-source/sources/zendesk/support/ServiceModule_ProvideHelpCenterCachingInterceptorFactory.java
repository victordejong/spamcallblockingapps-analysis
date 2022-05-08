package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory.class */
public final class ServiceModule_ProvideHelpCenterCachingInterceptorFactory implements Factory<HelpCenterCachingInterceptor> {
    private static final ServiceModule_ProvideHelpCenterCachingInterceptorFactory INSTANCE = new ServiceModule_ProvideHelpCenterCachingInterceptorFactory();

    public static Factory<HelpCenterCachingInterceptor> create() {
        return INSTANCE;
    }

    public static HelpCenterCachingInterceptor proxyProvideHelpCenterCachingInterceptor() {
        return ServiceModule.provideHelpCenterCachingInterceptor();
    }

    @Override // javax.inject.Provider
    public HelpCenterCachingInterceptor get() {
        return (HelpCenterCachingInterceptor) Preconditions.checkNotNull(ServiceModule.provideHelpCenterCachingInterceptor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
