package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import javax.inject.Provider;
import zendesk.suas.Reducer;
import zendesk.suas.Store;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesStoreFactory.class */
public final class RequestModule_ProvidesStoreFactory implements Factory<Store> {
    private final Provider<AsyncMiddleware> asyncMiddlewareProvider;
    private final Provider<List<Reducer>> reducersProvider;

    public RequestModule_ProvidesStoreFactory(Provider<List<Reducer>> provider, Provider<AsyncMiddleware> provider2) {
        this.reducersProvider = provider;
        this.asyncMiddlewareProvider = provider2;
    }

    public static Factory<Store> create(Provider<List<Reducer>> provider, Provider<AsyncMiddleware> provider2) {
        return new RequestModule_ProvidesStoreFactory(provider, provider2);
    }

    public static Store proxyProvidesStore(List<Reducer> list, Object obj) {
        return RequestModule.providesStore(list, (AsyncMiddleware) obj);
    }

    @Override // javax.inject.Provider
    public Store get() {
        return (Store) Preconditions.checkNotNull(RequestModule.providesStore(this.reducersProvider.get(), this.asyncMiddlewareProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
