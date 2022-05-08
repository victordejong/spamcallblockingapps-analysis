package zendesk.support.request;

import com.squareup.picasso.Picasso;
import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.suas.Store;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsEnabled_MembersInjector.class */
public final class RequestViewConversationsEnabled_MembersInjector implements MembersInjector<RequestViewConversationsEnabled> {
    private final Provider<ActionFactory> afProvider;
    private final Provider<CellFactory> cellFactoryProvider;
    private final Provider<Picasso> picassoProvider;
    private final Provider<Store> storeProvider;

    public RequestViewConversationsEnabled_MembersInjector(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<CellFactory> provider3, Provider<Picasso> provider4) {
        this.storeProvider = provider;
        this.afProvider = provider2;
        this.cellFactoryProvider = provider3;
        this.picassoProvider = provider4;
    }

    public static MembersInjector<RequestViewConversationsEnabled> create(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<CellFactory> provider3, Provider<Picasso> provider4) {
        return new RequestViewConversationsEnabled_MembersInjector(provider, provider2, provider3, provider4);
    }

    public static void injectAf(RequestViewConversationsEnabled requestViewConversationsEnabled, Object obj) {
        requestViewConversationsEnabled.f1894af = (ActionFactory) obj;
    }

    public static void injectCellFactory(RequestViewConversationsEnabled requestViewConversationsEnabled, Object obj) {
        requestViewConversationsEnabled.cellFactory = (CellFactory) obj;
    }

    public static void injectPicasso(RequestViewConversationsEnabled requestViewConversationsEnabled, Picasso picasso) {
        requestViewConversationsEnabled.picasso = picasso;
    }

    public static void injectStore(RequestViewConversationsEnabled requestViewConversationsEnabled, Store store) {
        requestViewConversationsEnabled.store = store;
    }

    public void injectMembers(RequestViewConversationsEnabled requestViewConversationsEnabled) {
        injectStore(requestViewConversationsEnabled, this.storeProvider.get());
        injectAf(requestViewConversationsEnabled, this.afProvider.get());
        injectCellFactory(requestViewConversationsEnabled, this.cellFactoryProvider.get());
        injectPicasso(requestViewConversationsEnabled, this.picassoProvider.get());
    }
}
