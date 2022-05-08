package zendesk.support.requestlist;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.VisibleForTesting;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.p001v4.widget.SwipeRefreshLayout;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.DefaultItemAnimator;
import android.support.p004v7.widget.DividerItemDecoration;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.Toolbar;
import android.support.transition.Fade;
import android.support.transition.Scene;
import android.support.transition.TransitionManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.squareup.picasso.Picasso;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.List;
import zendesk.support.UiUtils;
import zendesk.support.request.RequestUiConfig;
import zendesk.support.request.ViewAlmostRealProgressBar;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListView.class */
public class RequestListView extends FrameLayout {
    private static final String IS_SHOWING_SNACKBAR_KEY = "is_showing_snackbar";
    private static final String REQUEST_LIST_VIEW_SUPERSTATE_KEY = "request_list_view_superstate";
    private final AppCompatActivity activity;
    private final RequestListAdapter adapter;
    private final RequestListUiConfig config;
    private final Scene emptyScene;
    private final Scene listScene;
    private final View listSceneView;
    private final View logoImage;
    private final View logoImageEmpty;
    private final RecyclerView recyclerView;
    @VisibleForTesting
    @Nullable
    Snackbar snackbar;
    private final View startConversationButton;
    private final SwipeRefreshLayout swipeRefreshLayout;
    private final SwipeRefreshLayout swipeRefreshLayoutEmpty;
    private SceneState sceneState = SceneState.NONE;
    private OnItemClick itemClickListener = null;
    private View.OnClickListener retryClickListener = null;
    private boolean isLoading = false;
    private boolean isStopped = true;
    private final Fade fade = new Fade();
    private final ViewGroup sceneRoot = (ViewGroup) findViewById(C1790R.C1793id.request_list_scene_root);
    private final ViewAlmostRealProgressBar progressBar = (ViewAlmostRealProgressBar) findViewById(C1790R.C1793id.request_list_progressBar);
    private final Toolbar toolbar = (Toolbar) findViewById(C1790R.C1793id.request_list_toolbar);
    private final ViewGroup rootLayout = (ViewGroup) findViewById(C1790R.C1793id.request_list_coordinator_layout);
    private final FloatingActionButton createTicketFab = (FloatingActionButton) findViewById(C1790R.C1793id.request_list_create_new_ticket_fab);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListView$OnItemClick.class */
    public interface OnItemClick {
        void onClick(RequestListItem requestListItem);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListView$SceneState.class */
    private enum SceneState {
        LIST,
        EMPTY,
        NONE
    }

    public RequestListView(@NonNull AppCompatActivity appCompatActivity, @NonNull RequestListUiConfig requestListUiConfig, @NonNull Picasso picasso) {
        super(appCompatActivity);
        this.activity = appCompatActivity;
        this.config = requestListUiConfig;
        setId(C1790R.C1793id.request_list_view);
        inflate(appCompatActivity, C1790R.C1794layout.zs_activity_request_list, this);
        LayoutInflater from = LayoutInflater.from(appCompatActivity);
        this.listSceneView = from.inflate(C1790R.C1794layout.zs_activity_request_list_scene_data, this.sceneRoot, false);
        View inflate = from.inflate(C1790R.C1794layout.zs_activity_request_list_scene_empty, this.sceneRoot, false);
        this.listScene = new Scene(this.sceneRoot, this.listSceneView);
        this.emptyScene = new Scene(this.sceneRoot, inflate);
        this.logoImage = this.listSceneView.findViewById(C1790R.C1793id.request_list_zendesk_logo);
        this.recyclerView = (RecyclerView) this.listSceneView.findViewById(C1790R.C1793id.request_list_recycler);
        this.swipeRefreshLayout = (SwipeRefreshLayout) this.listSceneView.findViewById(C1790R.C1793id.request_list_swipe_refresh_layout);
        this.startConversationButton = inflate.findViewById(C1790R.C1793id.request_list_empty_start_conversation);
        this.swipeRefreshLayoutEmpty = (SwipeRefreshLayout) inflate.findViewById(C1790R.C1793id.request_list_swipe_refresh_layout_empty);
        this.logoImageEmpty = inflate.findViewById(C1790R.C1793id.request_list_zendesk_logo_empty);
        this.adapter = new RequestListAdapter(new OnItemClick() { // from class: zendesk.support.requestlist.RequestListView.1
            @Override // zendesk.support.requestlist.RequestListView.OnItemClick
            public void onClick(RequestListItem requestListItem) {
                if (RequestListView.this.itemClickListener != null) {
                    RequestListView.this.itemClickListener.onClick(requestListItem);
                }
            }
        }, picasso);
        this.recyclerView.setAdapter(this.adapter);
        this.recyclerView.setNestedScrollingEnabled(false);
        this.recyclerView.setHasFixedSize(true);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(appCompatActivity, 1, false));
        this.recyclerView.addItemDecoration(new DividerItemDecoration(appCompatActivity, 1));
        this.recyclerView.setItemAnimator(new DefaultItemAnimator());
        this.createTicketFab.hide();
        if (Build.VERSION.SDK_INT >= 21) {
            View findViewById = findViewById(C1790R.C1793id.request_list_compat_shadow);
            ((ViewGroup) findViewById.getParent()).removeView(findViewById);
        }
        int themeAttributeToColor = UiUtils.themeAttributeToColor(C1790R.C1791attr.colorAccent, getContext(), C1790R.color.zs_color_black);
        this.swipeRefreshLayout.setColorSchemeColors(themeAttributeToColor);
        this.swipeRefreshLayoutEmpty.setColorSchemeColors(themeAttributeToColor);
    }

    private void dismissSnackbar() {
        if (this.snackbar != null) {
            this.snackbar.dismiss();
        }
        this.snackbar = null;
    }

    private boolean isShowingSnackBar() {
        return this.snackbar != null && this.snackbar.isShownOrQueued();
    }

    public void announceAccessibility(@StringRes int i) {
        announceForAccessibility(getResources().getString(i));
    }

    public void finish() {
        if (!this.activity.isFinishing()) {
            this.activity.finish();
        }
    }

    public void finish(@Nullable String str) {
        if (StringUtils.hasLength(str)) {
            Logger.m298d("RequestListActivity", str, new Object[0]);
        }
        finish();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2 = parcelable;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            boolean z = bundle.getBoolean(IS_SHOWING_SNACKBAR_KEY);
            Parcelable parcelable3 = bundle.getParcelable(REQUEST_LIST_VIEW_SUPERSTATE_KEY);
            parcelable2 = parcelable3;
            if (z) {
                showErrorMessage();
                parcelable2 = parcelable3;
            }
        }
        super.onRestoreInstanceState(parcelable2);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(REQUEST_LIST_VIEW_SUPERSTATE_KEY, super.onSaveInstanceState());
        bundle.putBoolean(IS_SHOWING_SNACKBAR_KEY, isShowingSnackBar());
        return bundle;
    }

    public void onStart() {
        this.isStopped = false;
    }

    public void onStop() {
        this.isStopped = true;
        dismissSnackbar();
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        this.toolbar.setNavigationOnClickListener(onClickListener);
    }

    public void setCreateRequestListener(View.OnClickListener onClickListener) {
        this.createTicketFab.setOnClickListener(onClickListener);
        this.startConversationButton.setOnClickListener(onClickListener);
    }

    public void setItemClickListener(OnItemClick onItemClick) {
        this.itemClickListener = onItemClick;
    }

    public void setLoading(boolean z) {
        dismissSnackbar();
        if (this.isLoading != z) {
            if (z) {
                if (!this.swipeRefreshLayout.isRefreshing() && !this.swipeRefreshLayoutEmpty.isRefreshing()) {
                    announceAccessibility(C1790R.string.zs_request_list_content_loading_accessibility);
                    this.progressBar.start(ViewAlmostRealProgressBar.DONT_STOP_MOVING);
                }
            } else if (this.swipeRefreshLayout.isRefreshing() || this.swipeRefreshLayoutEmpty.isRefreshing()) {
                this.swipeRefreshLayout.setRefreshing(false);
                this.swipeRefreshLayoutEmpty.setRefreshing(false);
            } else {
                this.progressBar.stop(300L);
            }
        }
        this.isLoading = z;
    }

    public void setLogoClickListener(boolean z, View.OnClickListener onClickListener) {
        int i;
        if (z) {
            i = 0;
        } else {
            i = 4;
            onClickListener = null;
        }
        this.logoImage.setVisibility(i);
        this.logoImageEmpty.setVisibility(i);
        this.logoImage.setOnClickListener(onClickListener);
        this.logoImageEmpty.setOnClickListener(onClickListener);
    }

    public void setRetryClickListener(View.OnClickListener onClickListener) {
        this.retryClickListener = onClickListener;
    }

    public void setSwipeRefreshListener(SwipeRefreshLayout.OnRefreshListener onRefreshListener) {
        this.swipeRefreshLayout.setOnRefreshListener(onRefreshListener);
        this.swipeRefreshLayoutEmpty.setOnRefreshListener(onRefreshListener);
    }

    public void showErrorMessage() {
        if (!this.isStopped && !isShowingSnackBar()) {
            announceAccessibility(C1790R.string.zs_request_list_content_load_failed_accessibility);
            this.snackbar = Snackbar.make(this.rootLayout, C1790R.string.request_list_error_message, -2).setAction(C1790R.string.zendesk_retry_button_label, this.retryClickListener);
            this.snackbar.show();
        }
    }

    public void showRequestList(List<RequestListItem> list) {
        dismissSnackbar();
        this.progressBar.stop(300L);
        if (!CollectionUtils.isEmpty(list)) {
            this.adapter.swapRequests(list);
            this.progressBar.stop(300L);
            if (this.sceneState != SceneState.LIST) {
                this.createTicketFab.show();
                if (this.listSceneView.getParent() == null) {
                    TransitionManager.m426go(this.listScene, this.fade);
                }
                announceAccessibility(C1790R.string.zs_request_list_content_loaded_accessibility);
                this.sceneState = SceneState.LIST;
            }
        } else if (this.sceneState != SceneState.EMPTY) {
            this.createTicketFab.hide();
            TransitionManager.m426go(this.emptyScene, this.fade);
            announceAccessibility(C1790R.string.zs_request_list_content_loaded_empty_accessibility);
            this.sceneState = SceneState.EMPTY;
        }
    }

    public void startReferrerPage(String str) {
        this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public void startRequestActivity(RequestUiConfig.Builder builder) {
        builder.show(this.activity, this.config.getUiConfigs());
    }
}
