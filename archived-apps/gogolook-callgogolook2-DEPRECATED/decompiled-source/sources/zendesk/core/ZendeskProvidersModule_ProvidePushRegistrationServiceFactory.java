package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory.class */
public final class ZendeskProvidersModule_ProvidePushRegistrationServiceFactory implements AbstractC10866b<PushRegistrationService> {
    public final Provider<C15300s> retrofitProvider;

    public ZendeskProvidersModule_ProvidePushRegistrationServiceFactory(Provider<C15300s> provider) {
        this.retrofitProvider = provider;
    }

    public static ZendeskProvidersModule_ProvidePushRegistrationServiceFactory create(Provider<C15300s> provider) {
        return new ZendeskProvidersModule_ProvidePushRegistrationServiceFactory(provider);
    }

    public static PushRegistrationService providePushRegistrationService(C15300s sVar) {
        PushRegistrationService providePushRegistrationService = ZendeskProvidersModule.providePushRegistrationService(sVar);
        C10867c.m10383a(providePushRegistrationService, "Cannot return null from a non-@Nullable @Provides method");
        return providePushRegistrationService;
    }

    @Override // javax.inject.Provider
    public PushRegistrationService get() {
        return providePushRegistrationService(this.retrofitProvider.get());
    }
}
