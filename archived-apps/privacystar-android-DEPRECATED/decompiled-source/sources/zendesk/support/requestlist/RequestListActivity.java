package zendesk.support.requestlist;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p004v7.app.AppCompatActivity;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import javax.inject.Inject;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.support.Constants;
import zendesk.support.SdkDependencyProvider;
import zendesk.support.requestlist.RequestListUiConfig;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListActivity.class */
public class RequestListActivity extends AppCompatActivity {
    static final String LOG_TAG = "RequestListActivity";
    @Inject
    ActionHandlerRegistry actionHandlerRegistry;
    @Inject
    RequestListModel model;
    @Inject
    RequestListPresenter presenter;
    @Inject
    RequestListSyncHandler syncHandler;
    @Inject
    RequestListView view;

    public static RequestListUiConfig.Builder builder() {
        return new RequestListUiConfig.Builder();
    }

    public static void refresh(Context context, ActionHandlerRegistry actionHandlerRegistry) {
        ActionHandler handlerByAction = actionHandlerRegistry.handlerByAction(Constants.ACTION_REFRESH_REQUEST_LIST);
        if (handlerByAction != null) {
            handlerByAction.handle(null, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getTheme().applyStyle(C1790R.C1796style.ZendeskActivityDefaultTheme, true);
        boolean z = false;
        if (!SdkDependencyProvider.INSTANCE.isInitialized()) {
            Logger.m295e(LOG_TAG, SdkDependencyProvider.NOT_INITIALIZED_LOG, new Object[0]);
            finish();
            return;
        }
        RequestListUiConfig requestListUiConfig = (RequestListUiConfig) UiConfigUtil.fromBundle(getIntent().getExtras(), RequestListUiConfig.class);
        if (requestListUiConfig == null) {
            Logger.m295e(LOG_TAG, "No configuration found. Please use RequestListActivity.builder()", new Object[0]);
            finish();
            return;
        }
        SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().plus(new RequestListModule(this, requestListUiConfig)).inject(this);
        setContentView(this.view);
        RequestListPresenter requestListPresenter = this.presenter;
        if (bundle == null) {
            z = true;
        }
        requestListPresenter.onCreate(z);
        this.actionHandlerRegistry.add(this.syncHandler);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.actionHandlerRegistry != null) {
            this.actionHandlerRegistry.remove(this.syncHandler);
        }
        if (this.presenter != null) {
            this.presenter.onDestroy(isChangingConfigurations());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.syncHandler.setRunning(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.syncHandler.setRunning(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.view.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.view.onStop();
    }
}
