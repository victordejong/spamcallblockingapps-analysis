package com.privacystar.core.p011ui.detail_view;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.MenuRes;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentTransaction;
import android.support.p001v4.app.NavUtils;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.p011ui.widgets.ILogContextDialogFragment;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.ContactUtil;
import com.privacystar.core.util.NavigationUtil;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import com.rey.material.widget.FloatingActionButton;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.DetailActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivity.class */
public class DetailActivity extends PSActivity implements DetailFragment.DetailFragmentContainer, ILogContextDialogFragment {
    private static String fragmentLaunchKey = "fragment";
    private static String fragmentPayloadKey = "payload";
    @BindView(C1566R.C1569id.detail_view_button_cv)
    CardView button;
    @BindView(C1566R.C1569id.detail_view_button_text)
    TextView buttonText;
    @BindView(C1566R.C1569id.detail_view_add_fab)
    FloatingActionButton fab;
    @DrawableRes
    private int fabIcon;
    private Parcelable fragmentPayload;
    @MenuRes
    private int menuLayout;
    @BindView(2131297363)
    Toolbar toolbar;
    public int appbarOffset = 0;
    private boolean menuButtonEnabled = false;
    private boolean fabEnabled = false;
    private boolean buttonEnabled = false;
    private DetailActivityContent detailFragment = null;

    /* renamed from: com.privacystar.core.ui.detail_view.DetailActivity$DetailActivityContent */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent.class */
    public interface DetailActivityContent {
        void onButtonClicked();

        void onFabClicked();

        boolean onMenuItemClicked(MenuItem menuItem);

        void refreshContent();
    }

    @Nullable
    public static Intent detailIntent(Context context, Class cls) {
        return detailIntent(context, cls, null);
    }

    @Nullable
    public static Intent detailIntent(Context context, Class cls, Parcelable parcelable) {
        if (parcelable != null) {
            Timber.m37d("receiving intent for %s, parcel = %s", cls.getName(), parcelable.toString());
        }
        if (cls.getSuperclass() == DetailFragment.class) {
            Intent intent = new Intent(context, DetailActivity.class);
            intent.putExtra(getFragmentLaunchKey(), cls);
            intent.putExtra(getFragmentPayloadKey(), parcelable);
            return intent;
        }
        Timber.m34e("The class passed to detailIntent() was not a sub-class of DetailFragment.", new Object[0]);
        return null;
    }

    public static String getFragmentLaunchKey() {
        return fragmentLaunchKey;
    }

    public static String getFragmentPayloadKey() {
        return fragmentPayloadKey;
    }

    @IdRes
    private static int getFragmentResId() {
        return C1566R.C1569id.detail_fragment;
    }

    private void onHomePressed() {
        NavUtils.navigateUpFromSameTask(this);
    }

    public static Intent subscriptionIntent(Context context) {
        return detailIntent(context, AppManagerImpl.INSTANCE.getSubscriptionFragment(), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.p001v4.app.Fragment wireClass(java.lang.Class r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.Object r0 = r0.newInstance()     // Catch: IllegalAccessException -> 0x000b, InstantiationException -> 0x0019
            android.support.v4.app.Fragment r0 = (android.support.p001v4.app.Fragment) r0     // Catch: IllegalAccessException -> 0x000b, InstantiationException -> 0x0019
            r5 = r0
            goto L_0x0026
        L_0x000b:
            r5 = move-exception
            r0 = r5
            java.lang.String r1 = "accessing serialized class."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            timber.log.Timber.m32e(r0, r1, r2)
            goto L_0x0024
        L_0x0019:
            r5 = move-exception
            r0 = r5
            java.lang.String r1 = "casting serialized class as a Fragment."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            timber.log.Timber.m32e(r0, r1, r2)
        L_0x0024:
            r0 = 0
            r5 = r0
        L_0x0026:
            r0 = r5
            boolean r0 = r0 instanceof com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
            if (r0 == 0) goto L_0x0035
            r0 = r4
            r1 = r5
            com.privacystar.core.ui.detail_view.DetailActivity$DetailActivityContent r1 = (com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent) r1
            r0.detailFragment = r1
        L_0x0035:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.DetailActivity.wireClass(java.lang.Class):android.support.v4.app.Fragment");
    }

    private void wireFragment(@IdRes int i, Fragment fragment, boolean z) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(i, fragment);
        if (z) {
            beginTransaction.addToBackStack(null);
        }
        beginTransaction.commit();
        Timber.m37d("%s wired into %s.", fragment.getClass().getName(), getClass().getName());
        AnalyticsUtil.INSTANCE.trackDetailView(fragment.getClass().getName());
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void addViewToToolbar(View view) {
        if (this.toolbar != null) {
            this.toolbar.addView(view);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void attachFragment(DetailFragment detailFragment) {
        if (detailFragment instanceof DetailActivityContent) {
            this.detailFragment = (DetailActivityContent) detailFragment;
        } else {
            Timber.m25w("Failed to attach fragment %s", detailFragment.toString());
        }
    }

    @OnClick({C1566R.C1569id.detail_view_button_cv})
    public void buttonClicked() {
        if (this.detailFragment != null) {
            this.detailFragment.onButtonClicked();
        } else {
            Timber.m25w("Button clicked but no fragment is attached to this activity.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void enableButton(boolean z) {
        this.buttonEnabled = z;
        if (this.button != null) {
            this.button.setVisibility(z ? 0 : 4);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void enableFab(boolean z) {
        this.fabEnabled = z;
        if (this.fab != null) {
            this.fab.setVisibility(z ? 0 : 4);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void enableToolbarMenu(boolean z) {
        this.menuButtonEnabled = z;
        invalidateOptionsMenu();
    }

    @OnClick({C1566R.C1569id.detail_view_add_fab})
    public void fabClicked() {
        if (this.detailFragment != null) {
            this.detailFragment.onFabClicked();
        } else {
            Timber.m25w("FAB clicked but no fragment is attached to this activity.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public Parcelable getPayload() {
        return this.fragmentPayload;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void hideToolbar() {
        if (this.toolbar != null) {
            this.toolbar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onCreate$0$DetailActivity(View view) {
        onBackPressed();
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchAddContact(Caller caller) {
        if (caller != null) {
            Timber.m37d("Launching native Contacts to add caller.", new Object[0]);
            String str = "";
            if (SubscriptionRealm.isSubscriptionOngoing(getRealm())) {
                str = caller.getDisplayName();
            }
            ContactUtil.openAddContactScreen(this, str, caller.getNumber());
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchBlockList() {
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchCallerDetails(Caller caller) {
        LookupHandler.getInstance().lookupUncachedCaller(getRealm(), caller.getNumber(), LookupRequest.LookupType.MANUAL);
        swapFragment(CallerDetailsFragment.class, caller);
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchComplaintFlow(Caller caller) {
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchReport(CallDetails callDetails) {
        AnalyticsManager.INSTANCE.fire(Event.ComplaintFromOthersEvent.INSTANCE);
        NavigationUtil.launchReport(this, callDetails.getCaller(), false);
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchSendCall(Caller caller) {
        if (caller != null) {
            Timber.m37d("Launching native dialer application to place call.", new Object[0]);
            SystemUtil.INSTANCE.sendCall(this, caller.getNumber());
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchSendMessage(Caller caller) {
        if (caller != null) {
            Timber.m37d("Launching native sms application to compose message.", new Object[0]);
            SystemUtil.INSTANCE.sendMessage(this, caller.getNumber());
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void navigateBack() {
        getSupportFragmentManager().popBackStack();
    }

    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (restartAppIfPermissionsMissing()) {
            finishAffinity();
            return;
        }
        setContentView(C1566R.C1571layout.detail_activity);
        ButterKnife.bind(this);
        if (this.toolbar != null) {
            setSupportActionBar(this.toolbar);
        }
        if (getSupportActionBar() != null) {
            this.toolbar.setNavigationIcon(C1566R.C1568drawable.back_icon_padded);
            this.toolbar.setNavigationOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.DetailActivity$$Lambda$0
                private final DetailActivity arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.arg$1.lambda$onCreate$0$DetailActivity(view);
                }
            });
            this.toolbar.setNavigationContentDescription(C1566R.string.con_desc_detail_activity_back);
        }
        Intent intent = getIntent();
        this.fragmentPayload = intent.getParcelableExtra(getFragmentPayloadKey());
        wireFragment(getFragmentResId(), wireClass((Class) intent.getSerializableExtra(getFragmentLaunchKey())), false);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (this.menuButtonEnabled) {
            getMenuInflater().inflate(this.menuLayout, menu);
        }
        return this.menuButtonEnabled;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.detailFragment.onMenuItemClicked(menuItem)) {
            Timber.m37d("Attached fragment handled menu item click.", new Object[0]);
            return true;
        }
        Timber.m37d("Attached fragment didn't handle menu item click.", new Object[0]);
        int itemId = menuItem.getItemId();
        if (itemId != 16908332) {
            return itemId != 2131296309 ? super.onOptionsItemSelected(menuItem) : this.menuButtonEnabled;
        }
        onHomePressed();
        return true;
    }

    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setButtonText(@StringRes int i) {
        if (this.buttonText != null) {
            this.buttonText.setText(i);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setDetailToolbarColor(@ColorRes int i) {
        if (this.toolbar != null) {
            this.toolbar.setBackgroundColor(getResources().getColor(i));
        }
        setStatusBarColor(i);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setDetailToolbarDrawable(Drawable drawable) {
        if (this.toolbar != null) {
            this.toolbar.setBackground(drawable);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setDetailToolbarTitle(@StringRes int i) {
        setDetailToolbarTitle(getResources().getString(i));
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setDetailToolbarTitle(String str) {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(str);
        }
    }

    public void setFabContentDesc(String str) {
        if (this.fab != null) {
            this.fab.setContentDescription(str);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setFabIcon(@DrawableRes int i) {
        this.fabIcon = i;
        if (this.fab != null) {
            this.fab.setIcon(getResources().getDrawable(i), false);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void setToolbarMenu(@MenuRes int i) {
        this.menuLayout = i;
        invalidateOptionsMenu();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void showPaywall() {
        AFWelcomeDialogFragment.Companion.showWithCallback(getSupportFragmentManager(), SubscriptionRealm.isSubscriptionActive(getRealm()), true, DetailActivity$$Lambda$1.$instance);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void showSubscriptionPage() {
        swapFragment(AppManagerImpl.INSTANCE.getSubscriptionFragment(), null);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void showToolbar() {
        if (this.toolbar != null) {
            this.toolbar.setVisibility(0);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void swapFragment(Class cls, Parcelable parcelable) {
        swapFragment(cls, parcelable, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment.DetailFragmentContainer
    public void swapFragment(Class cls, Parcelable parcelable, boolean z) {
        this.fragmentPayload = parcelable;
        wireFragment(getFragmentResId(), wireClass(cls), z);
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void triggerContentRefresh(boolean z) {
        this.detailFragment.refreshContent();
    }
}
