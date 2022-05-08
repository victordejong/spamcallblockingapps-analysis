package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory implements Factory<SharedPreferencesStorage> {
    private final Provider<Context> contextProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static Factory<SharedPreferencesStorage> create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory(provider, provider2);
    }

    public static SharedPreferencesStorage proxyProvideLegacyIdentityBaseStorage(Context context, Object obj) {
        return ZendeskStorageModule.provideLegacyIdentityBaseStorage(context, (Serializer) obj);
    }

    @Override // javax.inject.Provider
    public SharedPreferencesStorage get() {
        return (SharedPreferencesStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideLegacyIdentityBaseStorage(this.contextProvider.get(), this.serializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
