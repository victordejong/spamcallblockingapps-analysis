package zendesk.support.requestlist;

import android.support.annotation.RestrictTo;
import com.squareup.picasso.Picasso;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Named;
import zendesk.core.MemoryCache;
import zendesk.support.ActivityScope;
import zendesk.support.RequestProvider;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.requestlist.RequestInfoDataSource;
@Module
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule.class */
public class RequestListModule {
    private final RequestListActivity activity;
    private final RequestListUiConfig config;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListModule(RequestListActivity requestListActivity, RequestListUiConfig requestListUiConfig) {
        this.activity = requestListActivity;
        this.config = requestListUiConfig;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static RequestListModel model(RequestInfoDataSource.Repository repository, MemoryCache memoryCache, SupportBlipsProvider supportBlipsProvider, SupportSettingsProvider supportSettingsProvider) {
        return new RequestListModel(repository, memoryCache, supportBlipsProvider, supportSettingsProvider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static RequestListPresenter presenter(RequestListView requestListView, RequestListModel requestListModel) {
        return new RequestListPresenter(requestListView, requestListModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static RequestListSyncHandler refreshHandler(RequestListPresenter requestListPresenter) {
        return new RequestListSyncHandler(requestListPresenter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static RequestInfoDataSource.Repository repository(RequestInfoDataSource.LocalDataSource localDataSource, SupportUiStorage supportUiStorage, RequestProvider requestProvider, @Named("SUPPORT_MAIN_THREAD_EXECUTOR") Executor executor, ExecutorService executorService) {
        return new RequestInfoDataSource.Repository(localDataSource, new RequestInfoDataSource.RemoteDataSource(new RequestInfoDataSource.Network(requestProvider), new RequestInfoDataSource.Disk(executor, executorService, supportUiStorage, RequestInfoDataSource.REMOTE)), new RequestInfoDataSource.Repository.Merger());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public RequestListView view(Picasso picasso) {
        return new RequestListView(this.activity, this.config, picasso);
    }
}
