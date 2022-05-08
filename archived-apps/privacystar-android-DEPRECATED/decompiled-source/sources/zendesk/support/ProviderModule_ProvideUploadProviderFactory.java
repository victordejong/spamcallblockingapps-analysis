package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideUploadProviderFactory.class */
public final class ProviderModule_ProvideUploadProviderFactory implements Factory<UploadProvider> {
    private final ProviderModule module;
    private final Provider<ZendeskUploadService> uploadServiceProvider;

    public ProviderModule_ProvideUploadProviderFactory(ProviderModule providerModule, Provider<ZendeskUploadService> provider) {
        this.module = providerModule;
        this.uploadServiceProvider = provider;
    }

    public static Factory<UploadProvider> create(ProviderModule providerModule, Provider<ZendeskUploadService> provider) {
        return new ProviderModule_ProvideUploadProviderFactory(providerModule, provider);
    }

    public static UploadProvider proxyProvideUploadProvider(ProviderModule providerModule, Object obj) {
        return providerModule.provideUploadProvider((ZendeskUploadService) obj);
    }

    @Override // javax.inject.Provider
    public UploadProvider get() {
        return (UploadProvider) Preconditions.checkNotNull(this.module.provideUploadProvider(this.uploadServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
