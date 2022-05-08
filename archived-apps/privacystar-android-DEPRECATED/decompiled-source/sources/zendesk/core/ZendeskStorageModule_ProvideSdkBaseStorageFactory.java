package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideSdkBaseStorageFactory implements Factory<BaseStorage> {
    private final Provider<Context> contextProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideSdkBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static Factory<BaseStorage> create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideSdkBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage proxyProvideSdkBaseStorage(Context context, Object obj) {
        return ZendeskStorageModule.provideSdkBaseStorage(context, (Serializer) obj);
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return (BaseStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideSdkBaseStorage(this.contextProvider.get(), this.serializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
