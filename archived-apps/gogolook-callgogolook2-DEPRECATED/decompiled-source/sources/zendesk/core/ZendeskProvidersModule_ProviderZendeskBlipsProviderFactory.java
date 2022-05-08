package zendesk.core;

import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory.class */
public final class ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory implements AbstractC10866b<ZendeskBlipsProvider> {
    public final Provider<ApplicationConfiguration> applicationConfigurationProvider;
    public final Provider<BlipsService> blipsServiceProvider;
    public final Provider<CoreSettingsStorage> coreSettingsStorageProvider;
    public final Provider<DeviceInfo> deviceInfoProvider;
    public final Provider<ExecutorService> executorProvider;
    public final Provider<IdentityManager> identityManagerProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory(Provider<BlipsService> provider, Provider<DeviceInfo> provider2, Provider<Serializer> provider3, Provider<IdentityManager> provider4, Provider<ApplicationConfiguration> provider5, Provider<CoreSettingsStorage> provider6, Provider<ExecutorService> provider7) {
        this.blipsServiceProvider = provider;
        this.deviceInfoProvider = provider2;
        this.serializerProvider = provider3;
        this.identityManagerProvider = provider4;
        this.applicationConfigurationProvider = provider5;
        this.coreSettingsStorageProvider = provider6;
        this.executorProvider = provider7;
    }

    public static ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory create(Provider<BlipsService> provider, Provider<DeviceInfo> provider2, Provider<Serializer> provider3, Provider<IdentityManager> provider4, Provider<ApplicationConfiguration> provider5, Provider<CoreSettingsStorage> provider6, Provider<ExecutorService> provider7) {
        return new ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ZendeskBlipsProvider providerZendeskBlipsProvider(Object obj, Object obj2, Object obj3, Object obj4, ApplicationConfiguration applicationConfiguration, Object obj5, ExecutorService executorService) {
        ZendeskBlipsProvider providerZendeskBlipsProvider = ZendeskProvidersModule.providerZendeskBlipsProvider((BlipsService) obj, (DeviceInfo) obj2, (Serializer) obj3, (IdentityManager) obj4, applicationConfiguration, (CoreSettingsStorage) obj5, executorService);
        C10867c.m10383a(providerZendeskBlipsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return providerZendeskBlipsProvider;
    }

    @Override // javax.inject.Provider
    public ZendeskBlipsProvider get() {
        return providerZendeskBlipsProvider(this.blipsServiceProvider.get(), this.deviceInfoProvider.get(), this.serializerProvider.get(), this.identityManagerProvider.get(), this.applicationConfigurationProvider.get(), this.coreSettingsStorageProvider.get(), this.executorProvider.get());
    }
}
