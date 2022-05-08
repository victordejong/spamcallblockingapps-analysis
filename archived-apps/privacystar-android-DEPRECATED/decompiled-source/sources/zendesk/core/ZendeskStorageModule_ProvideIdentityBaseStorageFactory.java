package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideIdentityBaseStorageFactory implements Factory<BaseStorage> {
    private final Provider<Context> contextProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideIdentityBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static Factory<BaseStorage> create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideIdentityBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage proxyProvideIdentityBaseStorage(Context context, Object obj) {
        return ZendeskStorageModule.provideIdentityBaseStorage(context, (Serializer) obj);
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return (BaseStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideIdentityBaseStorage(this.contextProvider.get(), this.serializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
