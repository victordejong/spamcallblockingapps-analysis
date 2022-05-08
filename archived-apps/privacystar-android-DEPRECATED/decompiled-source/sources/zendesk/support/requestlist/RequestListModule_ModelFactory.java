package zendesk.support.requestlist;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.MemoryCache;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.requestlist.RequestInfoDataSource;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule_ModelFactory.class */
public final class RequestListModule_ModelFactory implements Factory<RequestListModel> {
    private final Provider<SupportBlipsProvider> blipsProvider;
    private final Provider<MemoryCache> memoryCacheProvider;
    private final Provider<RequestInfoDataSource.Repository> requestInfoDataSourceProvider;
    private final Provider<SupportSettingsProvider> settingsProvider;

    public RequestListModule_ModelFactory(Provider<RequestInfoDataSource.Repository> provider, Provider<MemoryCache> provider2, Provider<SupportBlipsProvider> provider3, Provider<SupportSettingsProvider> provider4) {
        this.requestInfoDataSourceProvider = provider;
        this.memoryCacheProvider = provider2;
        this.blipsProvider = provider3;
        this.settingsProvider = provider4;
    }

    public static Factory<RequestListModel> create(Provider<RequestInfoDataSource.Repository> provider, Provider<MemoryCache> provider2, Provider<SupportBlipsProvider> provider3, Provider<SupportSettingsProvider> provider4) {
        return new RequestListModule_ModelFactory(provider, provider2, provider3, provider4);
    }

    public static RequestListModel proxyModel(RequestInfoDataSource.Repository repository, MemoryCache memoryCache, SupportBlipsProvider supportBlipsProvider, SupportSettingsProvider supportSettingsProvider) {
        return RequestListModule.model(repository, memoryCache, supportBlipsProvider, supportSettingsProvider);
    }

    @Override // javax.inject.Provider
    public RequestListModel get() {
        return (RequestListModel) Preconditions.checkNotNull(RequestListModule.model(this.requestInfoDataSourceProvider.get(), this.memoryCacheProvider.get(), this.blipsProvider.get(), this.settingsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
