package zendesk.support.requestlist;

import com.squareup.picasso.Picasso;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule_ViewFactory.class */
public final class RequestListModule_ViewFactory implements Factory<RequestListView> {
    private final RequestListModule module;
    private final Provider<Picasso> picassoProvider;

    public RequestListModule_ViewFactory(RequestListModule requestListModule, Provider<Picasso> provider) {
        this.module = requestListModule;
        this.picassoProvider = provider;
    }

    public static Factory<RequestListView> create(RequestListModule requestListModule, Provider<Picasso> provider) {
        return new RequestListModule_ViewFactory(requestListModule, provider);
    }

    public static RequestListView proxyView(RequestListModule requestListModule, Picasso picasso) {
        return requestListModule.view(picasso);
    }

    @Override // javax.inject.Provider
    public RequestListView get() {
        return (RequestListView) Preconditions.checkNotNull(this.module.view(this.picassoProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
