package zendesk.support.guide;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.app.ActionBar;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.SearchView;
import android.support.p004v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import java.util.List;
import javax.inject.Inject;
import zendesk.commonui.UiConfigUtil;
import zendesk.core.NetworkInfoProvider;
import zendesk.core.RetryAction;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SdkDependencyProvider;
import zendesk.support.SearchArticle;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.guide.HelpCenterMvp;
import zendesk.support.guide.HelpCenterUiConfig;
import zendesk.support.request.RequestActivity;
import zendesk.support.requestlist.RequestListActivity;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterActivity.class */
public class HelpCenterActivity extends AppCompatActivity implements HelpCenterMvp.View {
    static final String LOG_TAG = "HelpCenterActivity";
    private FloatingActionButton contactUsButton;
    private MenuItem conversationsMenuItem;
    private Snackbar errorSnackbar;
    @Inject
    HelpCenterProvider helpCenterProvider;
    private HelpCenterUiConfig helpCenterUiConfig;
    private View loadingView;
    @Inject
    NetworkInfoProvider networkInfoProvider;
    private HelpCenterMvp.Presenter presenter;
    private MenuItem searchViewMenuItem;
    @Inject
    SupportSettingsProvider settingsProvider;
    private SnackbarStatus snackbarStatus = SnackbarStatus.NONE;

    /* renamed from: zendesk.support.guide.HelpCenterActivity$5 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterActivity$5.class */
    static /* synthetic */ class C27705 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType = new int[HelpCenterMvp.ErrorType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType[HelpCenterMvp.ErrorType.CATEGORY_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType[HelpCenterMvp.ErrorType.SECTION_LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType[HelpCenterMvp.ErrorType.ARTICLES_LOAD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterActivity$SnackbarStatus.class */
    private enum SnackbarStatus {
        NO_CONNECTION,
        NONE,
        CONTENT_ERROR
    }

    private void addFragment(Fragment fragment) {
        getSupportFragmentManager().beginTransaction().add(C1790R.C1793id.fragment_container, fragment, fragment.getClass().getSimpleName()).commit();
    }

    private void addOnBackStackChangedListener() {
        getSupportFragmentManager().addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: zendesk.support.guide.HelpCenterActivity.2
            @Override // android.support.p001v4.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
                if (HelpCenterActivity.this.getCurrentFragment().isHidden()) {
                    HelpCenterActivity.this.getSupportFragmentManager().beginTransaction().show(HelpCenterActivity.this.getCurrentFragment()).commit();
                    if (HelpCenterActivity.this.getCurrentFragment() instanceof HelpCenterFragment) {
                        ((HelpCenterFragment) HelpCenterActivity.this.getCurrentFragment()).setPresenter(HelpCenterActivity.this.presenter);
                    }
                }
            }
        });
    }

    public static HelpCenterUiConfig.Builder builder() {
        return new HelpCenterUiConfig.Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment getCurrentFragment() {
        return getSupportFragmentManager().findFragmentById(C1790R.C1793id.fragment_container);
    }

    private HelpSearchFragment getSearchFragment() {
        if (getCurrentFragment() instanceof HelpSearchFragment) {
            Logger.m298d(LOG_TAG, "showSearchResults: current fragment is a HelpSearchFragment", new Object[0]);
            return (HelpSearchFragment) getCurrentFragment();
        }
        HelpSearchFragment newInstance = HelpSearchFragment.newInstance(this.helpCenterUiConfig, this.helpCenterProvider);
        getSupportFragmentManager().beginTransaction().replace(C1790R.C1793id.fragment_container, newInstance).addToBackStack(null).commit();
        return newInstance;
    }

    private ActionBar initToolbar() {
        Toolbar toolbar = (Toolbar) findViewById(C1790R.C1793id.support_toolbar);
        if (Build.VERSION.SDK_INT >= 21) {
            findViewById(C1790R.C1793id.support_compat_shadow).setVisibility(8);
        }
        setSupportActionBar(toolbar);
        return getSupportActionBar();
    }

    private boolean noFragmentAdded() {
        return getCurrentFragment() == null;
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void announceContentLoaded() {
        this.contactUsButton.announceForAccessibility(getString(C1790R.string.zs_help_center_content_loaded_accessibility));
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void clearSearchResults() {
        if (getCurrentFragment() instanceof HelpSearchFragment) {
            ((HelpSearchFragment) getCurrentFragment()).clearResults();
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void dismissError() {
        if (this.errorSnackbar != null) {
            this.errorSnackbar.dismiss();
        }
        this.snackbarStatus = SnackbarStatus.NONE;
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void exitActivity() {
        finish();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public Context getContext() {
        return getApplicationContext();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void hideLoadingState() {
        this.loadingView.setVisibility(8);
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public boolean isShowingHelp() {
        return getCurrentFragment() instanceof HelpCenterFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        theme.applyStyle(C1790R.C1796style.ZendeskActivityDefaultTheme, true);
        theme.applyStyle(C1790R.C1796style.ZendeskSupportActivityThemeDefaultIcon, false);
        setContentView(C1790R.C1794layout.zs_activity_help_center);
        if (!SdkDependencyProvider.INSTANCE.isInitialized()) {
            Logger.m295e(LOG_TAG, SdkDependencyProvider.NOT_INITIALIZED_LOG, new Object[0]);
            finish();
            return;
        }
        this.helpCenterUiConfig = (HelpCenterUiConfig) UiConfigUtil.fromBundle(getIntent().getExtras(), HelpCenterUiConfig.class);
        if (this.helpCenterUiConfig == null) {
            Logger.m295e(LOG_TAG, "No configuration found. Please use HelpCenterActivity.builder()", new Object[0]);
            finish();
            return;
        }
        SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().inject(this);
        initToolbar().setDisplayHomeAsUpEnabled(true);
        this.loadingView = findViewById(C1790R.C1793id.loading_view);
        this.contactUsButton = (FloatingActionButton) findViewById(C1790R.C1793id.contact_us_button);
        this.contactUsButton.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.HelpCenterActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HelpCenterActivity.this.showContactZendesk();
            }
        });
        this.presenter = new HelpCenterPresenter(this, new HelpCenterModel(this.helpCenterProvider, this.settingsProvider), this.networkInfoProvider);
        this.presenter.init(this.helpCenterUiConfig);
        addOnBackStackChangedListener();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1790R.C1795menu.zs_fragment_help_menu_conversations, menu);
        this.conversationsMenuItem = menu.findItem(C1790R.C1793id.fragment_help_menu_contact);
        this.searchViewMenuItem = menu.findItem(C1790R.C1793id.fragment_help_menu_search);
        if (this.searchViewMenuItem == null) {
            return true;
        }
        if (!this.networkInfoProvider.isNetworkAvailable()) {
            this.searchViewMenuItem.setEnabled(false);
        }
        SearchView searchView = (SearchView) this.searchViewMenuItem.getActionView();
        searchView.setImeOptions(searchView.getImeOptions() | 268435456);
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: zendesk.support.guide.HelpCenterActivity.3
            @Override // android.support.p004v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return false;
            }

            @Override // android.support.p004v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                if (HelpCenterActivity.this.presenter == null) {
                    return false;
                }
                HelpCenterActivity.this.presenter.onSearchSubmit(str);
                return true;
            }
        });
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        } else if (itemId != C1790R.C1793id.fragment_help_menu_contact) {
            return false;
        } else {
            showRequestList();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.presenter != null) {
            this.presenter.onPause();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if (!(this.presenter == null || this.searchViewMenuItem == null)) {
            this.searchViewMenuItem.setVisible(this.presenter.shouldShowSearchMenuItem());
        }
        if (!(this.presenter == null || this.conversationsMenuItem == null)) {
            this.conversationsMenuItem.setVisible(this.presenter.shouldShowConversationsMenuItem());
        }
        return super.onPrepareOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.presenter != null) {
            this.presenter.onResume(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.snackbarStatus != SnackbarStatus.NONE && this.errorSnackbar != null) {
            this.errorSnackbar.show();
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void setSearchEnabled(boolean z) {
        this.searchViewMenuItem.setEnabled(z);
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showContactUsButton() {
        this.contactUsButton.setVisibility(0);
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showContactZendesk() {
        RequestActivity.builder().show(this, this.helpCenterUiConfig.getUiConfigs());
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showHelp(HelpCenterUiConfig helpCenterUiConfig) {
        if (noFragmentAdded()) {
            HelpCenterFragment newInstance = HelpCenterFragment.newInstance(helpCenterUiConfig);
            newInstance.setPresenter(this.presenter);
            addFragment(newInstance);
        } else if (getCurrentFragment() instanceof HelpCenterFragment) {
            ((HelpCenterFragment) getCurrentFragment()).setPresenter(this.presenter);
        }
        invalidateOptionsMenu();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showLoadArticleErrorWithRetry(HelpCenterMvp.ErrorType errorType, final RetryAction retryAction) {
        String str;
        if (errorType != null) {
            switch (C27705.$SwitchMap$zendesk$support$guide$HelpCenterMvp$ErrorType[errorType.ordinal()]) {
                case 1:
                    str = getString(C1790R.string.support_categories_list_fragment_error_message);
                    break;
                case 2:
                    str = getString(C1790R.string.support_sections_list_fragment_error_message);
                    break;
                case 3:
                    str = getString(C1790R.string.support_articles_list_fragment_error_message);
                    break;
                default:
                    Logger.m289w(LOG_TAG, "Unknown or unhandled error type, falling back to error type name as label", new Object[0]);
                    str = getString(C1790R.string.support_help_search_no_results_label) + " " + errorType.name();
                    break;
            }
        } else {
            Logger.m289w(LOG_TAG, "ErrorType was null, falling back to 'retry' as label", new Object[0]);
            str = getString(C1790R.string.zendesk_retry_button_label);
        }
        if (this.snackbarStatus == SnackbarStatus.NONE) {
            this.errorSnackbar = Snackbar.make(this.contactUsButton, str, -2);
            this.errorSnackbar.setAction(C1790R.string.zendesk_retry_button_label, new View.OnClickListener() { // from class: zendesk.support.guide.HelpCenterActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    HelpCenterActivity.this.errorSnackbar.dismiss();
                    HelpCenterActivity.this.snackbarStatus = SnackbarStatus.NONE;
                    retryAction.onRetry();
                }
            });
            this.errorSnackbar.show();
            this.snackbarStatus = SnackbarStatus.CONTENT_ERROR;
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showLoadingState() {
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment != null && currentFragment.isVisible()) {
            getSupportFragmentManager().beginTransaction().hide(getCurrentFragment()).commit();
        }
        this.loadingView.setVisibility(0);
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showNoConnectionError() {
        if (this.snackbarStatus != SnackbarStatus.NO_CONNECTION) {
            this.errorSnackbar = Snackbar.make(this.contactUsButton, C1790R.string.zendesk_no_connectivity_error, -2);
            this.errorSnackbar.show();
            this.snackbarStatus = SnackbarStatus.NO_CONNECTION;
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showRequestList() {
        RequestListActivity.builder().show(this, this.helpCenterUiConfig.getUiConfigs());
    }

    @Override // zendesk.support.guide.HelpCenterMvp.View
    public void showSearchResults(List<SearchArticle> list, String str) {
        getSearchFragment().updateResults(list, str);
    }
}
