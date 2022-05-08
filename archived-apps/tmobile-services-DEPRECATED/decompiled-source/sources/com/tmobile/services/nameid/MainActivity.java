package com.tmobile.services.nameid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.scand.realmbrowser.RealmBrowser;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.Settings.LicenseFragment;
import com.tmobile.services.nameid.Settings.MyAccount.MyAccountFragment;
import com.tmobile.services.nameid.Settings.SettingsFragment;
import com.tmobile.services.nameid.TabsAdapter;
import com.tmobile.services.nameid.activity.ActivityCallDetailsFragment;
import com.tmobile.services.nameid.activity.ActivityFragment;
import com.tmobile.services.nameid.activity.ActivitySearchCallDetailsFragment;
import com.tmobile.services.nameid.activity.ManageCallDetailsFragment;
import com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.manage.ManageFragment;
import com.tmobile.services.nameid.model.AnalyticsEvent;
import com.tmobile.services.nameid.model.CallEvent;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.CheckName;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.MessageItem;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchedNumber;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.ActivityRealm;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.p007ui.banner.MainActivityBanner;
import com.tmobile.services.nameid.p007ui.dialog_fragment.CustomInfoDialogFragment;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.p007ui.search.NameIDSearchFragment;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.scamBlock.ScamBlockFragment;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.BulkLookupUtil;
import com.tmobile.services.nameid.utility.Constants;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.NotificationUtil;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SearchHelper;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Completable;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import okhttp3.internal.http2.Http2;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity.class */
public class MainActivity extends AppCompatActivity implements SettingsFragment.SettingsItemClickListener, SettingsFragment.ScamShieldFeaturesItemClickListener, NameIDSearch.OnSearchExpandListener {
    @Nullable

    /* renamed from: A */
    private Disposable f12615A;
    @Nullable

    /* renamed from: B */
    private DialogFragment f12616B;

    /* renamed from: E */
    private MainPresenter f12619E;

    /* renamed from: f */
    private Toolbar f12620f;

    /* renamed from: g */
    TabsAdapter f12621g;

    /* renamed from: h */
    private RealmResults<ActivityItem> f12622h;
    @Nullable

    /* renamed from: i */
    private ToolbarHomeClickListener f12623i;

    /* renamed from: j */
    private MenuItem f12624j;

    /* renamed from: p */
    private Disposable f12630p;

    /* renamed from: q */
    private Disposable f12631q;

    /* renamed from: r */
    private RealmResults<TmoUserStatus> f12632r;

    /* renamed from: t */
    private MainActivityBanner f12634t;

    /* renamed from: u */
    private FrameLayout f12635u;

    /* renamed from: v */
    private MainActivitySearchHandler f12636v;

    /* renamed from: w */
    private ViewPager f12637w;

    /* renamed from: x */
    private TabLayout f12638x;

    /* renamed from: y */
    private TabLayout f12639y;
    @Nullable

    /* renamed from: z */
    private Realm f12640z;
    @Nonnull

    /* renamed from: k */
    private HashMap<Tabs, Boolean> f12625k = new HashMap<>();

    /* renamed from: l */
    private int f12626l = -1;

    /* renamed from: m */
    private String f12627m = "";

    /* renamed from: n */
    private String f12628n = "";

    /* renamed from: o */
    private ActivityItem f12629o = null;

    /* renamed from: s */
    private boolean f12633s = false;
    @Nullable

    /* renamed from: C */
    private Disposable f12617C = null;

    /* renamed from: D */
    private SharedPreferences.OnSharedPreferenceChangeListener f12618D = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.tmobile.services.nameid.j
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            MainActivity.this.m7602Z(sharedPreferences, str);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$InnerSettings.class */
    public enum InnerSettings {
        MyAccount(0),
        CategoryManager(1),
        CallerIdPrefs(2),
        Notifications(3),
        EditRealm(4);
        
        final int value;

        InnerSettings(int i) {
            this.value = i;
        }

        public static InnerSettings fromInt(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$MainActivitySearchHandler.class */
    public interface MainActivitySearchHandler {
        /* renamed from: A0 */
        void mo6007A0();

        /* renamed from: T */
        void mo5987T(@Nullable NameIDSearch.ManageFabSearchInfo manageFabSearchInfo);

        /* renamed from: m */
        boolean mo5974m();

        /* renamed from: n0 */
        boolean mo5973n0();
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$ManageTabs.class */
    public enum ManageTabs {
        BLOCK(0),
        VOICEMAIL(1),
        ALLOWED(2);
        
        private final int value;

        ManageTabs(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$NavigationTabListener.class */
    private class NavigationTabListener implements TabLayout.OnTabSelectedListener {
        private NavigationTabListener() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: N */
        public void mo6558N(TabLayout.Tab tab) {
            MainActivity.this.m7562w().m7494r(Tabs.fromInt(MainActivity.this.f12638x.getSelectedTabPosition()));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: t */
        public void mo6544t(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: u0 */
        public void mo6543u0(TabLayout.Tab tab) {
            MainActivity.this.m7562w().m7493s(Tabs.fromInt(MainActivity.this.f12638x.getSelectedTabPosition()));
            MainActivity.this.m7635I0(false);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$ScamShieldFeaturesSettings.class */
    public enum ScamShieldFeaturesSettings {
        ProxyByDigits(0),
        NewPhoneNumber(1);
        
        final int value;

        ScamShieldFeaturesSettings(int i) {
            this.value = i;
        }

        public static ScamShieldFeaturesSettings fromInt(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$Tabs.class */
    public enum Tabs {
        SCAM_BLOCK(0),
        ACTIVITY(1),
        MANAGE(2),
        SETTINGS(3);
        
        private final int value;

        Tabs(int i) {
            this.value = i;
        }

        public static Tabs fromInt(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainActivity$ToolbarHomeClickListener.class */
    public interface ToolbarHomeClickListener {
        /* renamed from: a */
        void mo7063a();
    }

    /* renamed from: B */
    private void m7650B(String str, String str2) {
        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra("name", str);
        intent.putExtra("phone", str2);
        intent.addFlags(268435456);
        startActivity(intent);
    }

    /* renamed from: B0 */
    private void m7649B0(final ScamBlock.State state) {
        final boolean z = state == ScamBlock.State.ON;
        PreferenceUtils.m5386k("PREF_SCAM_BLOCK_STATE_IS_FAKE", true);
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.k
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MainActivity.m7586j0(z, state, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            LogUtil.m5641f("MainActivity#", "Error while setting fake scam block state.", th);
            PreferenceUtils.m5386k("PREF_SCAM_BLOCK_STATE_IS_FAKE", false);
        }
    }

    /* renamed from: D0 */
    private void m7645D0() {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().getDecorView().setSystemUiVisibility(9472);
        } else {
            getWindow().getDecorView().setSystemUiVisibility(1280);
        }
    }

    /* renamed from: E0 */
    private void m7643E0() {
        getWindow().getDecorView().setSystemUiVisibility(1280);
    }

    /* renamed from: F */
    private void m7642F(String str, Contact contact) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType("vnd.android.cursor.dir/raw_contact");
        intent.putExtra("phone", str);
        intent.setAction("android.intent.action.EDIT");
        intent.setDataAndType(ContactsContract.Contacts.getLookupUri(Long.parseLong(contact.getId()), contact.getLookupKey()), "vnd.android.cursor.item/contact");
        startActivity(intent);
    }

    /* renamed from: G */
    public static void m7640G(Context context) {
        Realm G0 = Realm.m3064G0();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ActivityItem.class);
            arrayList.add(AnalyticsEvent.class);
            arrayList.add(CallEvent.class);
            arrayList.add(Caller.class);
            arrayList.add(CallerSetting.class);
            arrayList.add(CategorySetting.class);
            arrayList.add(CheckName.class);
            arrayList.add(EventSummaryItem.class);
            arrayList.add(LicenseResponseItem.class);
            arrayList.add(MessageItem.class);
            arrayList.add(MessageUserPreference.class);
            arrayList.add(SearchedNumber.class);
            arrayList.add(TmoUserStatus.class);
            RealmBrowser.Builder builder = new RealmBrowser.Builder(context);
            builder.m7726b(G0, arrayList);
            builder.m7724d();
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: J0 */
    private void m7633J0(boolean z) {
        int i = z ? -1 : -2;
        if (this.f12635u.getLayoutParams() == null) {
            this.f12635u.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f12635u.getLayoutParams();
        layoutParams.height = i;
        this.f12635u.setLayoutParams(layoutParams);
    }

    /* renamed from: K0 */
    private void m7631K0(TextView textView, boolean z) {
        textView.setTextColor(getResources().getColor(m7562w().m7504h(z)));
    }

    /* renamed from: N */
    private void m7626N() {
        String h = PreferenceUtils.m5389h("PREF_PENDING_CONTACT_ADD_NAME", "");
        String h2 = PreferenceUtils.m5389h("PREF_PENDING_CONTACT_ADD_E164", "");
        PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_NAME", "");
        PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_E164", "");
        if (h2.isEmpty()) {
            LogUtil.m5643d("MainActivity#", "handleAddToContacts - no pending add detected.");
            return;
        }
        Contact e = ContactLookup.m5824d().m5823e(h2);
        if (e == null || e.getNumber() == null || e.getNumber().isEmpty()) {
            m7650B(h, h2);
        } else {
            m7642F(h2, e);
        }
    }

    /* renamed from: P */
    private void m7622P() {
        PreferenceUtils.m5384m("PREF_COUNT_APP_OPEN_SINCE_SCAM_SHIELD", PreferenceUtils.m5393d("PREF_COUNT_APP_OPEN_SINCE_SCAM_SHIELD") + 1);
    }

    /* renamed from: P0 */
    private void m7621P0() {
        NameIDSearchFragment nameIDSearchFragment = new NameIDSearchFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.m18330r(C1517R.C1520id.main_search_display, nameIDSearchFragment);
        beginTransaction.mo18339i();
        this.f12636v = nameIDSearchFragment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (r0.m7155c().getName().toLowerCase().contains("calldetails") != false) goto L_0x005b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
        if (r0.m7155c().getName().toLowerCase().contains("calldetails") != false) goto L_0x00ab;
     */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7618R() {
        /*
            r3 = this;
            r0 = r3
            com.tmobile.services.nameid.TabsAdapter r0 = r0.f12621g
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000f
            r0 = 0
            return r0
        L_0x000f:
            r0 = r4
            com.tmobile.services.nameid.TabsAdapter$TabInfo r0 = r0.m7163g()
            r4 = r0
            r0 = r3
            com.google.android.material.tabs.TabLayout r0 = r0.f12638x
            int r0 = r0.getSelectedTabPosition()
            com.tmobile.services.nameid.MainActivity$Tabs r1 = com.tmobile.services.nameid.MainActivity.Tabs.ACTIVITY
            int r1 = r1.getValue()
            if (r0 != r1) goto L_0x0061
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005e
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ActivityCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ActivityCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x005b
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ActivitySearchCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ActivitySearchCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x005b
            r0 = r6
            r7 = r0
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "calldetails"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x005e
        L_0x005b:
            r0 = 1
            r7 = r0
        L_0x005e:
            r0 = r7
            return r0
        L_0x0061:
            r0 = r5
            r7 = r0
            r0 = r3
            com.google.android.material.tabs.TabLayout r0 = r0.f12638x
            int r0 = r0.getSelectedTabPosition()
            com.tmobile.services.nameid.MainActivity$Tabs r1 = com.tmobile.services.nameid.MainActivity.Tabs.MANAGE
            int r1 = r1.getValue()
            if (r0 != r1) goto L_0x00ae
            r0 = r5
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x00ae
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ManageCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ManageCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00ab
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00ab
            r0 = r5
            r7 = r0
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "calldetails"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x00ae
        L_0x00ab:
            r0 = 1
            r7 = r0
        L_0x00ae:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.MainActivity.m7618R():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
        if (r0.m7155c().getName().toLowerCase().contains("calldetails") != false) goto L_0x0059;
     */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7616S() {
        /*
            r3 = this;
            r0 = r3
            com.tmobile.services.nameid.TabsAdapter r0 = r0.f12621g
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r4
            com.tmobile.services.nameid.TabsAdapter$TabInfo r0 = r0.m7163g()
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            com.google.android.material.tabs.TabLayout r0 = r0.f12638x
            int r0 = r0.getSelectedTabPosition()
            com.tmobile.services.nameid.MainActivity$Tabs r1 = com.tmobile.services.nameid.MainActivity.Tabs.MANAGE
            int r1 = r1.getValue()
            if (r0 != r1) goto L_0x005b
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x005b
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ManageCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ManageCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0059
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.Class<com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment> r1 = com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment.class
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0059
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.Class r0 = r0.m7155c()
            java.lang.String r0 = r0.getName()
            java.lang.String r0 = r0.toLowerCase()
            java.lang.String r1 = "calldetails"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x005b
        L_0x0059:
            r0 = 1
            r6 = r0
        L_0x005b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.MainActivity.m7616S():boolean");
    }

    /* renamed from: S0 */
    private void m7615S0(TabLayout tabLayout) {
        ViewGroup l = UIAnalyticConfigurator.m6240l(tabLayout);
        if (l != null) {
            UIAnalyticConfigurator.m6238n(l, Tabs.SCAM_BLOCK.value, "Scam Block Tab");
            UIAnalyticConfigurator.m6238n(l, Tabs.ACTIVITY.value, "Activity Tab");
            UIAnalyticConfigurator.m6238n(l, Tabs.MANAGE.value, "Manage Tab");
            UIAnalyticConfigurator.m6238n(l, Tabs.SETTINGS.value, "Settings Tab");
        }
    }

    /* renamed from: V */
    private boolean m7610V() {
        TabLayout tabLayout = this.f12638x;
        return tabLayout != null && tabLayout.getSelectedTabPosition() == Tabs.SCAM_BLOCK.getValue();
    }

    /* renamed from: V0 */
    private void m7609V0(View view, boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        if (z) {
            inputMethodManager.showSoftInput(view, 0);
        } else {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static /* synthetic */ void m7606X(FeatureState featureState) throws Exception {
        final Boolean valueOf = Boolean.valueOf(ApiUtils.m6897B(featureState));
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.h
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MainActivity.m7598b0(valueOf, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
            LogUtil.m5643d("MainActivity#", "Scam Block Feature SOC found? " + valueOf);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0 */
    public static /* synthetic */ void m7598b0(Boolean bool, Realm realm) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
        if (tmoUserStatus != null) {
            tmoUserStatus.setScamBlock(bool);
            tmoUserStatus.setUpdatedAt(new Date());
            LogUtil.m5643d("MainActivity#", "Updated Scam Block status in Realm");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j0 */
    public static /* synthetic */ void m7586j0(boolean z, ScamBlock.State state, Realm realm) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
        if (tmoUserStatus != null) {
            tmoUserStatus.setScamBlock(Boolean.valueOf(z));
            tmoUserStatus.setUpdatedAt(new Date());
            LogUtil.m5643d("MainActivity#", "Updated Scam Block status in Realm -> " + state.name());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k0 */
    public static /* synthetic */ WindowInsets m7584k0(View view, View view2, WindowInsets windowInsets) {
        int systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
        view.setPadding(0, systemWindowInsetTop, 0, 0);
        LogUtil.m5643d("MainActivity#", "Got window insets signal. windowInsetTop = " + systemWindowInsetTop);
        return windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
    }

    /* renamed from: l0 */
    private Drawable m7582l0(boolean z, int i) {
        LogUtil.m5639h("MainActivity#makeTabIcon", "adding/removing icon to tab and changing color");
        Drawable drawable = getResources().getDrawable(i);
        drawable.setColorFilter(getResources().getColor(m7562w().m7504h(z)), PorterDuff.Mode.SRC_ATOP);
        return drawable;
    }

    /* renamed from: o */
    private void m7577o() {
        ApiWrapper.m6760q(C1807c.f13472f, C1835o.f13625f);
    }

    /* renamed from: o0 */
    private void m7576o0() {
        if (Tabs.fromInt(this.f12638x.getSelectedTabPosition()) == Tabs.ACTIVITY) {
            ToolbarHomeClickListener toolbarHomeClickListener = this.f12623i;
            if (toolbarHomeClickListener != null) {
                toolbarHomeClickListener.mo7063a();
                return;
            }
            return;
        }
        onBackPressed();
    }

    /* renamed from: q */
    private Caller m7573q(String str) {
        try {
            RealmQuery Q0 = this.f12640z.m3053Q0(Caller.class);
            Q0.m2882t(Name.MARK, str);
            return (Caller) Q0.m2916G();
        } catch (Throwable th) {
            LogUtil.m5641f("MainActivity#", "Error while retrieving Caller from Realm by id.", th);
            return null;
        }
    }

    /* renamed from: q0 */
    public static void m7572q0(String str, Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(Http2.INITIAL_MAX_FRAME_SIZE);
            obtain.setClassName("");
            obtain.setPackageName("");
            obtain.getText().add(str);
            accessibilityManager.sendAccessibilityEvent(obtain);
        }
    }

    /* renamed from: w0 */
    private void m7561w0() {
        this.f12636v.mo6007A0();
    }

    /* renamed from: x */
    private String m7560x(boolean z, boolean z2, boolean z3) {
        if (z && !z2) {
            return "#" + Integer.toHexString(ContextCompat.m19675d(this, C1517R.C1518color.black_or_deep_purple));
        } else if (z3) {
            return "#" + Integer.toHexString(ContextCompat.m19675d(this, C1517R.C1518color.black_or_white));
        } else if (!z2) {
            return "#30111111";
        } else {
            return "#" + Integer.toHexString(ContextCompat.m19675d(this, C1517R.C1518color.white));
        }
    }

    /* renamed from: x0 */
    private void m7559x0() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i < 21 || i >= 23) {
                getWindow().setStatusBarColor(-1);
            } else {
                getWindow().setStatusBarColor(getResources().getColor(C1517R.C1518color.grey_2));
            }
        }
        m7645D0();
        this.f12620f.setVisibility(0);
    }

    /* renamed from: A */
    public void m7652A() {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.ACTIVITY.getValue());
        if (w != null) {
            w.m8937k();
        }
    }

    /* renamed from: A0 */
    public void m7651A0(Tabs tabs) {
        TabLayout.Tab w = this.f12638x.m8964w(tabs.getValue());
        if (w != null) {
            w.m8937k();
        }
    }

    /* renamed from: C */
    public void m7648C(String str, boolean z) {
        String m = WidgetUtils.m5222m(str);
        if (!m.isEmpty()) {
            m7646D(z, m);
        }
    }

    /* renamed from: C0 */
    public void m7647C0(Tabs tabs, boolean z) {
        TabFragmentInterface p = m7575p(tabs);
        if (p != null) {
            p.setVisible(z);
        }
    }

    /* renamed from: D */
    public void m7646D(boolean z, String str) {
        m7558y(false, false);
        if (this.f12638x.getSelectedTabPosition() == Tabs.ACTIVITY.value) {
            PreferenceUtils.m5383n("PREF_LAST_CLICKED_UUID_ACTIVITY", str);
            this.f12627m = str;
            if (z) {
                this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), ActivitySearchCallDetailsFragment.class, NameIDPage.CallerDetailsPage.ActivitySearchCallerDetails.f12674b);
            } else {
                this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), ActivityCallDetailsFragment.class, NameIDPage.CallerDetailsPage.ActivityCallerDetails.f12673b);
            }
        } else {
            PreferenceUtils.m5383n("PREF_LAST_CLICKED_UUID_MANAGE", str);
            this.f12628n = str;
            if (z) {
                this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), ManageSearchCallDetailsFragment.class, NameIDPage.CallerDetailsPage.ManageSearchCallerDetails.f12676b);
            } else {
                this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), ManageCallDetailsFragment.class, NameIDPage.CallerDetailsPage.ManageCallerDetails.f12675b);
            }
        }
        m7627M0(false);
        this.f12625k.put(Tabs.fromInt(this.f12638x.getSelectedTabPosition()), Boolean.TRUE);
        m7647C0(Tabs.fromInt(this.f12638x.getSelectedTabPosition()), true);
    }

    /* renamed from: E */
    public void m7644E() {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.SETTINGS.getValue());
        if (w != null) {
            w.m8937k();
        }
        m7562w().m7496p(InnerSettings.CategoryManager);
    }

    /* renamed from: F0 */
    public void m7641F0(ActivityItem activityItem) {
        if (this.f12629o != null) {
            PreferenceUtils.m5383n("PREF_LAST_CLICKED_UUID_ACTIVITY", activityItem.getId());
            LogUtil.m5639h("MainActivity#", "setting last clicked caller to " + activityItem.toString());
        } else {
            PreferenceUtils.m5383n("PREF_LAST_CLICKED_UUID_ACTIVITY", "");
            LogUtil.m5639h("MainActivity#", "lastClickedActivityItem is set null");
        }
        this.f12629o = activityItem;
    }

    /* renamed from: G0 */
    public void m7639G0(int i) {
        this.f12626l = i;
    }

    /* renamed from: H */
    public void m7638H() {
        this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), LicenseFragment.class, NameIDPage.SettingsPage.LegalNotices.f12690b);
        m7647C0(Tabs.SETTINGS, true);
    }

    /* renamed from: H0 */
    public void m7637H0(MainPresenter mainPresenter) {
        this.f12619E = mainPresenter;
    }

    /* renamed from: I */
    public void m7636I(@Nullable Manage.PNBTab pNBTab) {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.MANAGE.getValue());
        if (w != null) {
            w.m8937k();
        }
    }

    /* renamed from: I0 */
    public void m7635I0(boolean z) {
        MenuItem menuItem = this.f12624j;
        if (menuItem != null) {
            menuItem.setVisible(z);
        }
    }

    /* renamed from: J */
    public void m7634J() {
        m7635I0(true);
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.SETTINGS.getValue());
        if (w != null) {
            w.m8937k();
        }
        this.f12633s = true;
        if (!this.f12621g.m7163g().m7155c().equals(MyAccountFragment.class)) {
            this.f12621g.m7160j(Tabs.SETTINGS.getValue(), MyAccountFragment.class, NameIDPage.SettingsPage.C1530MyAccount.f12691b);
        }
        m7647C0(Tabs.SETTINGS, true);
    }

    /* renamed from: K */
    public void m7632K() {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.SCAM_BLOCK.getValue());
        if (w != null) {
            w.m8937k();
        }
    }

    /* renamed from: L */
    public void m7630L() {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.SETTINGS.getValue());
        if (w != null) {
            w.m8937k();
        }
    }

    /* renamed from: L0 */
    public void m7629L0(@Nullable ToolbarHomeClickListener toolbarHomeClickListener) {
        this.f12623i = toolbarHomeClickListener;
    }

    /* renamed from: M */
    public void m7628M(Class cls, NameIDPage nameIDPage) {
        this.f12621g.m7160j(this.f12638x.getSelectedTabPosition(), cls, nameIDPage);
        m7647C0(Tabs.SETTINGS, true);
    }

    /* renamed from: M0 */
    public void m7627M0(boolean z) {
        if (m7616S()) {
            this.f12639y.setVisibility(8);
            return;
        }
        boolean y = m7562w().m7487y();
        TabLayout tabLayout = this.f12639y;
        int i = 8;
        if (z) {
            i = 8;
            if (y) {
                i = 0;
            }
        }
        tabLayout.setVisibility(i);
    }

    /* renamed from: N0 */
    public void m7625N0(@StringRes int i) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            LogUtil.m5643d("MainActivity#setToolbarTitle", "Setting toolbar title to " + getString(i));
            supportActionBar.mo22081z(i);
        }
    }

    /* renamed from: O */
    public boolean m7624O() {
        return PermissionChecker.m5423b(this);
    }

    /* renamed from: O0 */
    public void m7623O0(@DrawableRes int i, @StringRes int i2) {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo22085v(i2);
            Drawable drawable = getResources().getDrawable(i);
            drawable.setColorFilter(getResources().getColor(C1517R.C1518color.magenta), PorterDuff.Mode.SRC_ATOP);
            getSupportActionBar().mo22083x(drawable);
        }
    }

    /* renamed from: Q */
    public void m7620Q(int i, int i2, int i3, boolean z, boolean z2) {
        LogUtil.m5639h("MainActivity#insertCustomTabView", "creating custom view for tab");
        String string = getString(i2);
        View inflate = getLayoutInflater().inflate(C1517R.layout.main_tab_item, (ViewGroup) null);
        View findViewById = inflate.findViewById(C1517R.C1520id.tab_container);
        findViewById.setContentDescription(string + " tab");
        TextView textView = (TextView) inflate.findViewById(C1517R.C1520id.tab_text);
        textView.setText(string);
        textView.setContentDescription("");
        m7631K0(textView, z);
        ImageView imageView = (ImageView) inflate.findViewById(C1517R.C1520id.tab_icon);
        imageView.setImageDrawable(m7582l0(z, i3));
        imageView.setContentDescription("");
        TabLayout.Tab w = this.f12638x.m8964w(i);
        int d = m7562w().m7508d(i);
        if (!z2 || d <= 0) {
            inflate.findViewById(C1517R.C1520id.tab_notification_container).setVisibility(4);
        } else {
            ((TextView) inflate.findViewById(C1517R.C1520id.tab_notification_count)).setText(String.format(DeviceInfoUtils.m5758f(), "%d", Integer.valueOf(d)));
            inflate.findViewById(C1517R.C1520id.tab_notification_container).setVisibility(0);
        }
        if (w != null) {
            w.m8933o(inflate);
        }
    }

    /* renamed from: Q0 */
    public void m7619Q0() {
        View findViewById = findViewById(C1517R.C1520id.appbar);
        final View findViewById2 = findViewById(C1517R.C1520id.activity_main);
        findViewById.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.tmobile.services.nameid.e
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                return MainActivity.m7584k0(findViewById2, view, windowInsets);
            }
        });
    }

    /* renamed from: R0 */
    public void m7617R0(TabsAdapter tabsAdapter, Bundle bundle) {
        tabsAdapter.m7168b(ScamBlockFragment.class, NameIDPage.ScamBlock.f12683b);
        tabsAdapter.m7168b(ActivityFragment.class, NameIDPage.Activity.f12672b);
        tabsAdapter.m7168b(ManageFragment.class, NameIDPage.Manage.f12677b);
        tabsAdapter.m7168b(SettingsFragment.class, NameIDPage.C1529Settings.f12686b);
        tabsAdapter.m7166d();
        tabsAdapter.m7169a(bundle);
    }

    /* renamed from: T */
    public boolean m7614T() {
        TabLayout tabLayout = this.f12638x;
        boolean z = false;
        if (tabLayout != null) {
            if (tabLayout.getSelectedTabPosition() != Tabs.SETTINGS.getValue()) {
                z = false;
            } else {
                TabsAdapter tabsAdapter = this.f12621g;
                if (tabsAdapter == null) {
                    return false;
                }
                TabsAdapter.TabInfo g = tabsAdapter.m7163g();
                z = false;
                if (g != null) {
                    z = false;
                    if (g.m7155c().equals(MyAccountFragment.class)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: T0 */
    public void m7613T0(TabLayout tabLayout) {
        tabLayout.setTabMode(1);
        if (BuildUtils.m5850d()) {
            tabLayout.setSelectedTabIndicatorColor(getResources().getColor(C1517R.C1518color.gold_orange));
            tabLayout.setTabTextColors(getResources().getColor(C1517R.C1518color.white), getResources().getColor(C1517R.C1518color.gold_orange));
            tabLayout.setBackgroundColor(getResources().getColor(C1517R.C1518color.deep_purple));
        }
        TabLayout.Tab x = tabLayout.m8963x();
        x.m8930r(C1517R.string.activity_type_calls_tab_title);
        x.m8936l(C1517R.string.con_desc_activity_calls_tab);
        tabLayout.m8983d(x);
        TabLayout.Tab x2 = tabLayout.m8963x();
        x2.m8930r(C1517R.string.activity_type_messages_tab_title);
        x2.m8936l(C1517R.string.con_desc_activity_messages_tab);
        tabLayout.m8983d(x2);
    }

    /* renamed from: U */
    public boolean m7612U() {
        LogUtil.m5643d("MainActivity#", "current selected tab: " + this.f12621g.m7163g().m7155c());
        TabsAdapter tabsAdapter = this.f12621g;
        boolean z = (tabsAdapter == null || tabsAdapter.m7163g() == null || this.f12621g.m7163g().m7155c() == SettingsFragment.class) ? false : true;
        LogUtil.m5643d("MainActivity#isNotOnSettingsFragment", "returing " + z);
        return z;
    }

    /* renamed from: U0 */
    public void m7611U0(@StringRes int i, @StringRes int i2, @StringRes int i3) {
        NameIDDialogBuilder nameIDDialogBuilder = new NameIDDialogBuilder();
        nameIDDialogBuilder.m6146p(i, new String[0]);
        nameIDDialogBuilder.m6154h(i2, new String[0]);
        nameIDDialogBuilder.m6156f(i3, new String[0]);
        nameIDDialogBuilder.m6160b(getSupportFragmentManager());
    }

    /* renamed from: W0 */
    public void m7607W0(boolean z) {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            m7609V0(currentFocus, z);
        }
    }

    /* renamed from: X0 */
    public void m7605X0(Manage.PNBTab pNBTab, Manage.ActivityType activityType) {
        this.f12635u.setVisibility(0);
        this.f12636v.mo5987T(new NameIDSearch.ManageFabSearchInfo(pNBTab, activityType));
    }

    /* renamed from: Y0 */
    public void m7603Y0(@Nullable WidgetUtils.SubscribeFromDialogListener subscribeFromDialogListener) {
        WidgetUtils.m5235f0(this, getSupportFragmentManager(), subscribeFromDialogListener, null);
    }

    /* renamed from: Z */
    public /* synthetic */ void m7602Z(SharedPreferences sharedPreferences, String str) {
        DialogFragment dialogFragment;
        if (!PreferenceUtils.m5395b("PREF_DOING_MIGRATION", false) && (dialogFragment = this.f12616B) != null) {
            dialogFragment.dismiss();
        }
        Constants.TrialStatus fromValue = Constants.TrialStatus.fromValue(PreferenceUtils.m5394c("PREF_TRIAL_OPT_IN_STATUS", Constants.TrialStatus.NOT_TRIED.getValue()));
        if (fromValue != Constants.TrialStatus.NOT_TRIED) {
            if (fromValue == Constants.TrialStatus.SUCCESS) {
                LogUtil.m5632o("MainActivity#", "User opt-ed in to trial during onboarding. Showing latency dialog");
                WidgetUtils.m5225k0(getSupportFragmentManager());
            } else if (fromValue == Constants.TrialStatus.FAIL) {
                LogUtil.m5632o("MainActivity#", "User opt-ed in to trial during onboarding but error occurred. Showing error dialog.");
                new NameIDDialogBuilder().m6146p(C1517R.string.account_trial_check_fail_dialog_title, new String[0]).m6154h(C1517R.string.account_trial_check_fail_dialog_subtitle, new String[0]).m6156f(C1517R.string.subscribe_nameid_fail_dialog_my_account, new String[0]).m6148n(C1517R.string.general_close, new String[0]).m6157e(new Function0() { // from class: com.tmobile.services.nameid.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MainActivity.this.m7600a0();
                    }
                }).m6160b(getSupportFragmentManager());
            }
            PreferenceUtils.m5385l("PREF_TRIAL_OPT_IN_STATUS", Constants.TrialStatus.NOT_TRIED.getValue());
        }
    }

    /* renamed from: Z0 */
    public void m7601Z0() {
        WidgetUtils.m5229i0(this);
    }

    /* renamed from: a0 */
    public /* synthetic */ Unit m7600a0() {
        m7634J();
        return Unit.f20447a;
    }

    /* renamed from: a1 */
    public void m7599a1(String str) {
        this.f12634t.mo6202k(str);
    }

    /* renamed from: b1 */
    public void m7597b1(Tabs tabs, int i, int i2, boolean z, boolean z2) {
        TabLayout.Tab w = this.f12638x.m8964w(tabs.getValue());
        LogUtil.m5639h("MainActivity#updateCustomTabView", "updating custom view for " + tabs);
        String string = getString(i);
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(" is ");
        sb.append(z ? "selected" : "not selected");
        LogUtil.m5632o("MainActivity#updateCustomTabView", sb.toString());
        View view = null;
        if (w != null) {
            view = w.m8944d();
            if (view == null) {
                view = getLayoutInflater().inflate(C1517R.layout.main_tab_item, (ViewGroup) null);
            }
        }
        if (view != null) {
            view.findViewById(C1517R.C1520id.tab_container).setContentDescription(getString(C1517R.string.con_desc_icon, new Object[]{string}));
            TextView textView = (TextView) view.findViewById(C1517R.C1520id.tab_text);
            textView.setText(" ");
            m7631K0(textView, z);
            ((ImageView) view.findViewById(C1517R.C1520id.tab_icon)).setImageDrawable(m7582l0(z, i2));
            int d = m7562w().m7508d(w.m8942f());
            if (!z2 || d <= 0) {
                view.findViewById(C1517R.C1520id.tab_notification_container).setVisibility(4);
            } else {
                ((TextView) view.findViewById(C1517R.C1520id.tab_notification_count)).setText(String.format(DeviceInfoUtils.m5758f(), "%d", Integer.valueOf(d)));
                view.findViewById(C1517R.C1520id.tab_notification_container).setVisibility(0);
            }
            w.m8933o(view);
            textView.setText(string);
        }
    }

    @Override // com.tmobile.services.nameid.Settings.SettingsFragment.SettingsItemClickListener
    /* renamed from: c */
    public void mo7376c(int i) {
        m7562w().m7496p(InnerSettings.fromInt(i));
    }

    /* renamed from: c0 */
    public /* synthetic */ void m7596c0(NameIDPage nameIDPage) throws Exception {
        LogUtil.m5643d("MainActivity#", "Received page change - " + nameIDPage.m7485a());
        this.f12634t.mo6209c(nameIDPage);
        m7562w().m7490v(nameIDPage);
        this.f12635u.setVisibility(m7562w().m7486z() ? 0 : 8);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.OnSearchExpandListener
    /* renamed from: e */
    public void mo5961e() {
        LogUtil.m5643d("MainActivity#", "received event for collapsed search");
        AnalyticsWrapper.m5883E(MainApplication.m7526n(), "hide_lookup");
        boolean z = false;
        m7633J0(false);
        m7607W0(false);
        this.f12635u.setVisibility(m7562w().m7486z() ? 0 : 8);
        this.f12637w.setVisibility(0);
        this.f12638x.setVisibility(0);
        if (Tabs.MANAGE.value == this.f12638x.getSelectedTabPosition()) {
            z = true;
        }
        m7627M0(z);
    }

    @Nullable
    /* renamed from: f */
    public Realm m7593f() {
        Realm realm = this.f12640z;
        if (realm == null || realm.isClosed()) {
            this.f12640z = Realm.m3064G0();
        }
        return this.f12640z;
    }

    /* renamed from: f0 */
    public /* synthetic */ void m7592f0(NameIDPage nameIDPage) throws Exception {
        LogUtil.m5643d("MainActivity#", "Received page change - " + nameIDPage.m7485a());
        this.f12634t.mo6209c(nameIDPage);
        m7562w().m7490v(nameIDPage);
        this.f12635u.setVisibility((m7562w().m7486z() || this.f12636v.mo5974m()) ? 0 : 8);
    }

    @Override // com.tmobile.services.nameid.Settings.SettingsFragment.ScamShieldFeaturesItemClickListener
    /* renamed from: g */
    public void mo7377g(int i) {
        if (BuildUtils.m5850d() || SubscriptionHelper.m5332B()) {
            m7562w().m7497o(ScamShieldFeaturesSettings.NewPhoneNumber);
        } else {
            m7562w().m7497o(ScamShieldFeaturesSettings.fromInt(i));
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.OnSearchExpandListener
    /* renamed from: h */
    public void mo5960h() {
        LogUtil.m5643d("MainActivity#", "received event for expanded search");
        AnalyticsWrapper.m5865o("tap", "Search Button");
        AnalyticsWrapper.m5883E(MainApplication.m7526n(), "show_lookup");
        m7633J0(true);
        this.f12637w.setVisibility(8);
        this.f12638x.setVisibility(8);
        this.f12639y.setVisibility(8);
    }

    /* renamed from: h0 */
    public /* synthetic */ void m7590h0(ScamBlock.State state, Long l) throws Exception {
        LogUtil.m5643d("MainActivity#", "Executing scheduled fake state change.");
        m7649B0(state);
    }

    /* renamed from: i0 */
    public /* synthetic */ void m7588i0(Long l) throws Exception {
        LogUtil.m5643d("MainActivity#", "Executing scheduled feature state check.");
        m7577o();
    }

    /* renamed from: j */
    public boolean m7587j() {
        Realm realm = this.f12640z;
        if (realm == null || realm.isClosed()) {
            return true;
        }
        RealmQuery Q0 = this.f12640z.m3053Q0(CategorySetting.class);
        Q0.m2911L("bucketId", new Integer[]{1, 2, 4, 5, 6, 10});
        RealmResults<CategorySetting> E = Q0.m2918E();
        if (E.isEmpty()) {
            return false;
        }
        while (true) {
            boolean z = true;
            for (CategorySetting categorySetting : E) {
                if (!z || categorySetting.getDisposition() != CallerSetting.Action.VOICEMAIL.getValue()) {
                    z = false;
                }
            }
            return z;
        }
    }

    /* renamed from: k */
    public void m7585k() {
        Disposable disposable = this.f12631q;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: l */
    public void m7583l() {
        BulkLookupUtil.m5843a();
    }

    /* renamed from: m */
    public void m7581m() {
        TmoApiWrapper.m6620t(C1813i.f13493f, null, null);
    }

    /* renamed from: m0 */
    public void m7580m0(String str, CallerSetting.Action action, MessageUserPreference.CommEventType commEventType, @Nullable Caller caller) {
        SearchHelper.m5359q(str, action, commEventType, this, m7562w().m7499m(), caller);
    }

    /* renamed from: n */
    public void m7579n(boolean z) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo22088s(z);
            supportActionBar.mo22087t(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r0.booleanValue() == false) goto L_0x0024;
     */
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7578n0() {
        /*
            r4 = this;
            r0 = r4
            com.google.android.material.tabs.TabLayout r0 = r0.f12638x
            int r0 = r0.getSelectedTabPosition()
            com.tmobile.services.nameid.MainActivity$Tabs r0 = com.tmobile.services.nameid.MainActivity.Tabs.fromInt(r0)
            r5 = r0
            r0 = r4
            java.util.HashMap<com.tmobile.services.nameid.MainActivity$Tabs, java.lang.Boolean> r0 = r0.f12625k
            r1 = r5
            java.lang.Object r0 = r0.get(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0024
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0041
        L_0x0024:
            r0 = r4
            boolean r0 = r0.m7618R()
            if (r0 != 0) goto L_0x003a
            r0 = r4
            boolean r0 = r0.m7610V()
            if (r0 == 0) goto L_0x0035
            goto L_0x003a
        L_0x0035:
            r0 = 0
            r7 = r0
            goto L_0x003c
        L_0x003a:
            r0 = 1
            r7 = r0
        L_0x003c:
            r0 = r7
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r5 = r0
        L_0x0041:
            r0 = r5
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0051
            r0 = r4
            r1 = 0
            r2 = 0
            r0.m7558y(r1, r2)
            goto L_0x0055
        L_0x0051:
            r0 = r4
            r0.m7559x0()
        L_0x0055:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.MainActivity.m7578n0():void");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        m7561w0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m7559x0();
        m7635I0(false);
        if (!this.f12636v.mo5973n0()) {
            boolean z = this.f12633s && this.f12621g.m7163g().m7155c().equals(MyAccountFragment.class);
            this.f12625k.put(Tabs.fromInt(this.f12638x.getSelectedTabPosition()), Boolean.FALSE);
            boolean c = this.f12621g.m7167c();
            if (!c || z) {
                this.f12633s = false;
                c = m7562w().m7502j();
            }
            if (!c) {
                LogUtil.m5643d("MainActivity#onBackPressed", "Calling finish()");
                finish();
                return;
            }
            ((MainApplication) getApplication()).m7551E(this, this.f12621g.m7163g().m7154d());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_main);
        this.f12640z = Realm.m3064G0();
        m7637H0(new MainPresenter(this));
        this.f12635u = (FrameLayout) findViewById(C1517R.C1520id.main_search_display);
        this.f12637w = (ViewPager) findViewById(C1517R.C1520id.viewpager);
        this.f12638x = (TabLayout) findViewById(C1517R.C1520id.tabs);
        this.f12639y = (TabLayout) findViewById(C1517R.C1520id.toolbar_tab_layout);
        TabsAdapter tabsAdapter = new TabsAdapter(this, this.f12638x);
        this.f12621g = tabsAdapter;
        this.f12637w.setAdapter(tabsAdapter);
        this.f12638x.setupWithViewPager(this.f12637w);
        this.f12620f = (Toolbar) findViewById(2131231756);
        this.f12634t = (MainActivityBanner) findViewById(C1517R.C1520id.banner);
        if (!BuildUtils.m5850d()) {
            m7645D0();
        } else {
            m7643E0();
        }
        m7619Q0();
        m7621P0();
        LogUtil.m5639h("MainActivity#MainActivity#onCreate", "start");
        if (!PreferenceUtils.m5395b("pref_app_was_paused", true)) {
            ActivityRealm.setAllRead();
        }
        PreferenceUtils.m5386k("pref_app_was_paused", false);
        setSupportActionBar(this.f12620f);
        LogUtil.m5639h("MainActivity#onCreate", "adding tab fragments");
        m7617R0(this.f12621g, bundle);
        m7613T0(this.f12639y);
        boolean b = PreferenceUtils.m5395b("pref_just_showed_startup", true);
        String g = PreferenceUtils.m5390g("INTENT_KEY_START_FROM_NOTIFICATION");
        String g2 = PreferenceUtils.m5390g("INTENT_KEY_E164_NUMBER");
        PreferenceUtils.m5383n("INTENT_KEY_START_FROM_NOTIFICATION", "");
        PreferenceUtils.m5383n("INTENT_KEY_E164_NUMBER", "");
        this.f12617C = ((MainApplication) getApplication()).m7525o().observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.p
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MainActivity.this.m7596c0((NameIDPage) obj);
            }
        }, C1816l.f13497f);
        int c = m7562w().m7509c(b, g, g2);
        m7620Q(Tabs.SCAM_BLOCK.getValue(), C1517R.string.fragment_scam_block_title, C1517R.C1519drawable.ic_icon_nav_scam_inactive, c == Tabs.SCAM_BLOCK.getValue(), false);
        m7620Q(Tabs.ACTIVITY.getValue(), C1517R.string.fragment_activity_title, C1517R.C1519drawable.ic_icon_nav_activity_inactive, c == Tabs.ACTIVITY.getValue(), c != Tabs.ACTIVITY.getValue());
        m7620Q(Tabs.MANAGE.getValue(), C1517R.string.manage_tab_title, C1517R.C1519drawable.ic_icon_nav_manage_inactive, c == Tabs.MANAGE.getValue(), false);
        m7620Q(Tabs.SETTINGS.getValue(), C1517R.string.fragment_settings_title, C1517R.C1519drawable.ic_icon_nav_settings_inactive, c == Tabs.SETTINGS.getValue(), true);
        m7615S0(this.f12638x);
        m7562w().m7488x(Tabs.fromInt(c));
        TabLayout.Tab w = this.f12638x.m8964w(c);
        if (w != null) {
            w.m8937k();
        }
        m7627M0(Tabs.fromInt(c) == Tabs.MANAGE);
        this.f12638x.m8984c(new NavigationTabListener());
        if (!DateUtils.m5787h(new Date(System.currentTimeMillis()), new Date(PreferenceUtils.m5393d("PREF_LAST_DAILY_USER_EVENT_DATE")))) {
            PreferenceUtils.m5384m("PREF_LAST_DAILY_USER_EVENT_DATE", System.currentTimeMillis());
            MainApplication.m7553C("daily_user", new String[]{"timestamp"}, new String[]{String.valueOf(System.currentTimeMillis())});
        }
        LogUtil.m5639h("MainActivity#onCreate", "end");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1517R.C1522menu.manage_search, menu);
        MenuItem findItem = menu.findItem(C1517R.C1520id.menu_refresh);
        this.f12624j = findItem;
        findItem.setVisible(m7614T());
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        Disposable disposable = this.f12615A;
        if (disposable != null) {
            disposable.dispose();
            this.f12615A = null;
        }
        PreferenceUtils.m5386k("pref_app_was_paused", true);
        Realm realm = this.f12640z;
        if (realm != null) {
            realm.close();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            m7576o0();
            return true;
        }
        if (menuItem.getItemId() == 2131231317) {
            TabFragmentInterface p = m7575p(Tabs.SETTINGS);
            if (p instanceof MyAccountFragment) {
                ((MyAccountFragment) p).m7433e1();
            }
            AnalyticsWrapper.m5865o("Tap", "Refresh button");
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        PreferenceUtils.m5386k("PREF_APP_JUST_INSTALLED", false);
        if (this.f12622h.isValid()) {
            this.f12622h.m2870B();
        }
        if (this.f12632r.isValid()) {
            this.f12632r.m2870B();
        }
        SharedPreferences f = PreferenceUtils.m5391f();
        if (f != null) {
            f.unregisterOnSharedPreferenceChangeListener(this.f12618D);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 2 && iArr.length > 0 && iArr[0] == 0) {
            MainApplication.m7553C("permissions", new String[]{"category", "status"}, new String[]{"contacts", "granted"});
            PreferenceUtils.m5386k("PREF_USER_HAS_DENIED_CONTACTS", false);
            ContactLookup.m5824d().m5822f();
            m7626N();
        } else if (i == 2 && iArr.length > 0 && iArr[0] == -1) {
            MainApplication.m7553C("permissions", new String[]{"category", "status"}, new String[]{"contacts", "denied"});
            PreferenceUtils.m5386k("PREF_USER_HAS_DENIED_CONTACTS", true);
        }
        m7561w0();
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if (fragment instanceof ActivityFragment) {
                ((ActivityFragment) fragment).m7134M1();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        LogUtil.m5643d("MainActivity#onResume", "resuming app");
        LogUtil.m5643d("MainActivity#onResume", "found last clicked: " + this.f12629o);
        if (!PreferenceUtils.m5395b("pref_just_showed_startup", false)) {
            PreferenceUtils.m5386k("PREF_REFRESH_ACTIVITY", true);
        }
        Completable.m4519e(2000L, TimeUnit.MILLISECONDS).m4520c(new Action() { // from class: com.tmobile.services.nameid.a
            @Override // io.reactivex.functions.Action
            public final void run() {
                MainActivity.this.m7583l();
            }
        });
        PreferenceUtils.m5386k("pref_just_showed_startup", false);
        ContactLookup.m5824d().m5822f();
        PreferenceUtils.m5386k("PREF_HIDE_PERMISSIONS_ON_ACTIVITY", false);
        PreferenceUtils.m5386k("PREF_HAS_SHOWN_ENABLE_SCAM_BLOCK_DIALOG", false);
        PreferenceUtils.m5386k("PREF_HAS_SHOWN_ENABLE_CALL_BLOCK_DIALOG", false);
        Realm realm = this.f12640z;
        if (realm != null && !realm.isClosed()) {
            RealmResults<ActivityItem> allActivity = ActivityRealm.getAllActivity(this.f12640z);
            this.f12622h = allActivity;
            final MainPresenter w = m7562w();
            w.getClass();
            allActivity.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.y
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    MainPresenter.this.m7498n((RealmResults) obj);
                }
            });
            if (PreferenceUtils.m5395b("PREF_SHOWN_SUBSCRIPTION_NOTIFICATION", false)) {
                LogUtil.m5632o("MainActivity#onResume", "Just showed a notification for updated subscription, resetting pending flags.");
                m7562w().m7489w(false);
                PreferenceUtils.m5386k("PREF_SHOWN_SUBSCRIPTION_NOTIFICATION", false);
            }
            this.f12632r = this.f12640z.m3053Q0(TmoUserStatus.class).m2918E();
            m7562w().m7495q(this.f12632r);
            RealmResults<TmoUserStatus> realmResults = this.f12632r;
            final MainPresenter w2 = m7562w();
            w2.getClass();
            realmResults.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.z
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    MainPresenter.this.m7495q((RealmResults) obj);
                }
            });
        }
        if (this.f12632r.isValid()) {
            m7562w().m7511a(this.f12632r);
        }
        m7647C0(Tabs.fromInt(this.f12638x.getSelectedTabPosition()), true);
        PreferenceUtils.m5385l("PREF_NUMBER_NOTIFICATIONS", 0);
        PreferenceUtils.m5382o("PREF_API24_NOTIFICATIONS", new ArrayList());
        NotificationUtil.m5445l(this);
        m7562w().m7503i();
        SharedPreferences f = PreferenceUtils.m5391f();
        if (f != null) {
            f.registerOnSharedPreferenceChangeListener(this.f12618D);
        }
        if (PreferenceUtils.m5395b("PREF_DOING_MIGRATION", false)) {
            LogUtil.m5643d("MainActivity#", "Performing migration, showing loading dialog");
            this.f12616B = WidgetUtils.m5245a0(getSupportFragmentManager(), C1517R.string.migration_still_waiting, false);
        }
        boolean b = PreferenceUtils.m5395b("PREF_HAS_SHOWN_SCAM_SHIELD_TRIAL", false);
        LogUtil.m5643d("MainActivity#", "has shown Scam Shield Trial? " + b);
        if (!b) {
            PreferenceUtils.m5386k("PREF_HAS_SHOWN_SCAM_SHIELD_TRIAL", true);
            boolean b2 = PreferenceUtils.m5395b("PREF_TRIAL_STARTED_FROM_OOBE", false);
            if (SubscriptionHelper.m5308t() && !b2) {
                LogUtil.m5643d("MainActivity#", "Trial customer, showing trial upgrade modal");
                CustomInfoDialogFragment.f13921i.m6179a(getSupportFragmentManager(), C1517R.layout.modal_app_upgrade_trial_upgrade, C1834n.f13624f);
            }
        }
        this.f12634t.mo6211a(PermissionChecker.m5423b(this), PermissionChecker.m5422c());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TabsAdapter tabsAdapter = this.f12621g;
        if (tabsAdapter != null) {
            tabsAdapter.m7159k(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        EventManager.m5725a(this, "App_UI_Started");
        LogUtil.m5643d("MainActivity#onStart", "refreshing scam block status");
        m7577o();
        Disposable disposable = this.f12617C;
        if (disposable == null || disposable.isDisposed()) {
            this.f12617C = ((MainApplication) getApplication()).m7525o().observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.b
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MainActivity.this.m7592f0((NameIDPage) obj);
                }
            }, C1808d.f13473f);
        }
        ((MainApplication) getApplication()).m7551E(this, this.f12621g.m7163g().m7154d());
        m7622P();
        this.f12634t.setViewVisible();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        Disposable disposable = this.f12617C;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: p */
    public TabFragmentInterface m7575p(Tabs tabs) {
        TabFragmentInterface tabFragmentInterface = null;
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if (fragment instanceof TabFragmentInterface) {
                TabFragmentInterface tabFragmentInterface2 = (TabFragmentInterface) fragment;
                if (tabFragmentInterface2.mo6305F0() == tabs) {
                    tabFragmentInterface = tabFragmentInterface2;
                }
            }
        }
        return tabFragmentInterface;
    }

    /* renamed from: p0 */
    public void m7574p0(@StringRes int i) {
        m7572q0(getString(i), this);
    }

    /* renamed from: r */
    public boolean m7571r(Tabs tabs) {
        TabLayout tabLayout = this.f12638x;
        if (tabLayout == null) {
            return false;
        }
        TabFragmentInterface p = m7575p(Tabs.fromInt(tabLayout.getSelectedTabPosition()));
        boolean z = false;
        if (p != null) {
            z = false;
            if (p.mo6305F0() == tabs) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: s */
    public ActivityItem m7570s() {
        if (this.f12629o == null) {
            String g = PreferenceUtils.m5390g("PREF_LAST_CLICKED_UUID_ACTIVITY");
            Realm G0 = Realm.m3064G0();
            try {
                LogUtil.m5639h("MainActivity#", "Looking for activity item with id = " + g);
                RealmQuery Q0 = G0.m3053Q0(ActivityItem.class);
                Q0.m2882t(Name.MARK, g);
                ActivityItem activityItem = (ActivityItem) Q0.m2916G();
                LogUtil.m5639h("MainActivity#", "found activity item -> " + activityItem);
                if (activityItem != null) {
                    LogUtil.m5639h("MainActivity#", "activity item found is not null");
                    this.f12629o = activityItem.copy();
                }
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        ActivityItem activityItem2 = this.f12629o;
        if (activityItem2 != null) {
            m7641F0(activityItem2);
        }
        return this.f12629o;
    }

    /* renamed from: s0 */
    public void m7569s0(SubscriptionHelper.State state, int i) {
        this.f12634t.mo6199n(state, i);
    }

    /* renamed from: t */
    public Caller m7568t(boolean z) {
        Caller q = m7573q(m7566u(z));
        if (q == null) {
            LogUtil.m5631p("MainActivity#getLastClickedCaller", "Caller not found. Returning null.");
        }
        return q;
    }

    /* renamed from: t0 */
    public void m7567t0() {
        TabLayout.Tab w = this.f12638x.m8964w(Tabs.SCAM_BLOCK.getValue());
        TabLayout.Tab w2 = this.f12638x.m8964w(Tabs.ACTIVITY.getValue());
        TabLayout.Tab w3 = this.f12638x.m8964w(Tabs.MANAGE.getValue());
        TabLayout.Tab w4 = this.f12638x.m8964w(Tabs.SETTINGS.getValue());
        if (w != null && w.m8944d() == null) {
            m7562w().m7500l(Tabs.SCAM_BLOCK);
        }
        if (w2 != null && w2.m8944d() == null) {
            m7562w().m7500l(Tabs.ACTIVITY);
        }
        if (w3 != null && w3.m8944d() == null) {
            m7562w().m7500l(Tabs.MANAGE);
        }
        if (w4 != null && w4.m8944d() == null) {
            m7562w().m7500l(Tabs.SETTINGS);
        }
    }

    /* renamed from: u */
    public String m7566u(boolean z) {
        if (z) {
            String str = this.f12627m;
            String str2 = str;
            if (str.isEmpty()) {
                str2 = PreferenceUtils.m5390g("PREF_LAST_CLICKED_UUID_ACTIVITY");
            }
            return str2;
        }
        String str3 = this.f12628n;
        String str4 = str3;
        if (str3.isEmpty()) {
            str4 = PreferenceUtils.m5390g("PREF_LAST_CLICKED_UUID_MANAGE");
        }
        return str4;
    }

    /* renamed from: u0 */
    public void m7565u0() {
        if (m7618R() || m7610V()) {
            m7558y(false, false);
        }
    }

    /* renamed from: v */
    public int m7564v() {
        return this.f12626l;
    }

    /* renamed from: v0 */
    public void m7563v0() {
        onBackPressed();
    }

    /* renamed from: w */
    public MainPresenter m7562w() {
        return this.f12619E;
    }

    /* renamed from: y */
    public void m7558y(boolean z, boolean z2) {
        m7643E0();
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(Color.parseColor(m7560x(m7610V(), z, z2)));
        }
        this.f12620f.setVisibility(8);
    }

    /* renamed from: y0 */
    public void m7557y0(Date date, final ScamBlock.State state) {
        long time = (date.getTime() - System.currentTimeMillis()) + DateUtils.f14252a.longValue();
        LogUtil.m5643d("MainActivity#", "Scheduling fake state change for " + date.toString());
        if (time < 0) {
            LogUtil.m5643d("MainActivity#", "Can't schedule state change in the past.");
            return;
        }
        Disposable disposable = this.f12631q;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f12631q = Single.m4462m(time, TimeUnit.MILLISECONDS).m4466h(AndroidSchedulers.m4448c()).m4469e(new Consumer() { // from class: com.tmobile.services.nameid.m
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MainActivity.this.m7590h0(state, (Long) obj);
            }
        }).m4463l(Schedulers.m3239b()).m4465i();
    }

    /* renamed from: z0 */
    public void m7556z0(Date date) {
        long time = (date.getTime() - System.currentTimeMillis()) + DateUtils.f14252a.longValue();
        if (time < 0) {
            LogUtil.m5643d("MainActivity#", "Can't schedule feature state check in the past.");
            return;
        }
        Disposable disposable = this.f12630p;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f12630p = Single.m4462m(time, TimeUnit.MILLISECONDS).m4469e(new Consumer() { // from class: com.tmobile.services.nameid.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MainActivity.this.m7588i0((Long) obj);
            }
        }).m4463l(Schedulers.m3239b()).m4466h(AndroidSchedulers.m4448c()).m4465i();
    }
}
