package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory.class */
public final class ZendeskProvidersModule_ProviderConnectivityManagerFactory implements Factory<ConnectivityManager> {
    private final Provider<Context> contextProvider;

    public ZendeskProvidersModule_ProviderConnectivityManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<ConnectivityManager> create(Provider<Context> provider) {
        return new ZendeskProvidersModule_ProviderConnectivityManagerFactory(provider);
    }

    public static ConnectivityManager proxyProviderConnectivityManager(Context context) {
        return ZendeskProvidersModule.providerConnectivityManager(context);
    }

    @Override // javax.inject.Provider
    public ConnectivityManager get() {
        return (ConnectivityManager) Preconditions.checkNotNull(ZendeskProvidersModule.providerConnectivityManager(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
