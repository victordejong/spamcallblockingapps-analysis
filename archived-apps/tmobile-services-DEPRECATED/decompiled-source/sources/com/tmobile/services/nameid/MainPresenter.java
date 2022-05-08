package com.tmobile.services.nameid;

import android.content.Context;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.Settings.MyAccount.MyAccountFragment;
import com.tmobile.services.nameid.Settings.NewPhoneNumber.NewPhoneNumberFragment;
import com.tmobile.services.nameid.Settings.Notifications.NotificationsFragment;
import com.tmobile.services.nameid.Settings.ProxyByDigits.ProxyByDigitsFragment;
import com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefsFragment;
import com.tmobile.services.nameid.Settings.categorymanager.CategoryManagerFragment;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.manage.ManageFragment;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.DebugFragment;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.realm.Realm;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainPresenter.class */
public class MainPresenter {

    /* renamed from: a */
    private MainActivity f12657a;

    /* renamed from: c */
    private MainActivity.Tabs f12659c;
    @Nullable

    /* renamed from: j */
    private TmoUserStatus f12666j;

    /* renamed from: b */
    protected MainActivity.Tabs f12658b = MainActivity.Tabs.ACTIVITY;

    /* renamed from: d */
    private boolean f12660d = false;

    /* renamed from: e */
    private boolean f12661e = false;

    /* renamed from: f */
    private boolean f12662f = false;
    @Nullable

    /* renamed from: g */
    private String f12663g = null;

    /* renamed from: h */
    private LinkedList<MainActivity.Tabs> f12664h = new LinkedList<>();

    /* renamed from: i */
    private boolean f12665i = false;

    /* renamed from: k */
    private NameIDPage f12667k = NameIDPage.ScamBlock.f12683b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.MainPresenter$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/MainPresenter$1.class */
    public static /* synthetic */ class C15261 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12668a;

        /* renamed from: b */
        static final /* synthetic */ int[] f12669b;

        /* renamed from: c */
        static final /* synthetic */ int[] f12670c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:48:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:58:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:52:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:46:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:40:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:50:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:44:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:38:0x0089). Please submit an issue!!! */
        static {
            int[] iArr = new int[MainActivity.ScamShieldFeaturesSettings.values().length];
            f12670c = iArr;
            try {
                iArr[MainActivity.ScamShieldFeaturesSettings.ProxyByDigits.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12670c[MainActivity.ScamShieldFeaturesSettings.NewPhoneNumber.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[MainActivity.InnerSettings.values().length];
            f12669b = iArr2;
            try {
                iArr2[MainActivity.InnerSettings.MyAccount.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12669b[MainActivity.InnerSettings.CategoryManager.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12669b[MainActivity.InnerSettings.CallerIdPrefs.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12669b[MainActivity.InnerSettings.Notifications.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12669b[MainActivity.InnerSettings.EditRealm.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[MainActivity.Tabs.values().length];
            f12668a = iArr3;
            try {
                iArr3[MainActivity.Tabs.SCAM_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12668a[MainActivity.Tabs.ACTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f12668a[MainActivity.Tabs.MANAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f12668a[MainActivity.Tabs.SETTINGS.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public MainPresenter(MainActivity mainActivity) {
        this.f12657a = mainActivity;
    }

    /* renamed from: A */
    private void m7513A(TmoUserStatus tmoUserStatus) {
        int i;
        SubscriptionHelper.State d = SubscriptionHelper.m5324d(tmoUserStatus);
        SubscriptionHelper.State state = SubscriptionHelper.State.PREMIUM;
        int i2 = C1517R.string.pending_subscription_synced_title;
        if (d == state) {
            i = C1517R.string.pending_name_id_synced_subtitle;
        } else if (d == SubscriptionHelper.State.REDUCED) {
            i = C1517R.string.pending_screen_it_synced_subtitle;
        } else if (d == SubscriptionHelper.State.TRIAL) {
            i = C1517R.string.trial_success_dialog_subtitle;
            i2 = C1517R.string.trial_success_dialog_title;
        } else {
            i = C1517R.string.general_empty_string;
            i2 = C1517R.string.general_empty_string;
        }
        if (i2 != 2131689880) {
            this.f12657a.m7611U0(i2, i, C1517R.string.general_close);
        }
    }

    /* renamed from: B */
    private void m7512B(boolean z, MainActivity.Tabs tabs) {
        if (!z || this.f12659c != this.f12658b) {
            this.f12657a.m7597b1(tabs, m7506f(tabs), m7507e(tabs), z, m7501k(tabs, z));
            this.f12657a.m7647C0(this.f12658b, z);
        }
        if (z && this.f12659c != this.f12658b) {
            this.f12657a.m7578n0();
        }
    }

    /* renamed from: b */
    private void m7510b(MainActivity.Tabs tabs) {
        int value = tabs.getValue();
        for (int i = 0; i < 4; i++) {
            if (i != value) {
                m7512B(false, MainActivity.Tabs.fromInt(i));
            }
        }
    }

    @DrawableRes
    /* renamed from: e */
    private static int m7507e(MainActivity.Tabs tabs) {
        int i = C15261.f12668a[tabs.ordinal()];
        return i != 1 ? i != 3 ? i != 4 ? C1517R.C1519drawable.ic_icon_nav_activity_inactive : C1517R.C1519drawable.ic_icon_nav_settings_inactive : C1517R.C1519drawable.ic_icon_nav_manage_inactive : C1517R.C1519drawable.ic_icon_nav_scam_inactive;
    }

    @StringRes
    /* renamed from: f */
    private static int m7506f(MainActivity.Tabs tabs) {
        int i = C15261.f12668a[tabs.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? C1517R.string.general_empty_string : C1517R.string.fragment_settings_title : C1517R.string.manage_tab_title : C1517R.string.fragment_activity_title : C1517R.string.fragment_scam_block_title;
    }

    /* renamed from: g */
    private int m7505g(TmoUserStatus tmoUserStatus) {
        return SubscriptionHelper.m5324d(tmoUserStatus) == SubscriptionHelper.State.TRIAL ? tmoUserStatus.getDaysLeft() : 0;
    }

    /* renamed from: k */
    private boolean m7501k(MainActivity.Tabs tabs, boolean z) {
        return (!z && tabs == MainActivity.Tabs.ACTIVITY) || tabs == MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: t */
    private boolean m7492t() {
        try {
            Realm G0 = Realm.m3064G0();
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null) {
                Boolean scamBlock = tmoUserStatus.getScamBlock();
                boolean z = scamBlock != null && scamBlock.booleanValue();
                if (G0 != null) {
                    G0.close();
                }
                return z;
            } else if (G0 == null) {
                return true;
            } else {
                G0.close();
                return true;
            }
        } catch (Exception e) {
            LogUtil.m5641f("MainPresenter#", "Error while getting a TmoUserStatus from Realm.", e);
            return true;
        }
    }

    /* renamed from: u */
    private void m7491u(MainActivity.Tabs tabs) {
        int i;
        int i2;
        if (tabs == MainActivity.Tabs.ACTIVITY) {
            i2 = C1517R.C1519drawable.filter;
            i = C1517R.string.con_desc_filter;
        } else {
            i2 = C1517R.C1519drawable.arrow_back;
            i = C1517R.string.con_desc_back;
        }
        this.f12657a.m7623O0(i2, i);
    }

    /* renamed from: a */
    public void m7511a(List<TmoUserStatus> list) {
        if (!list.isEmpty()) {
            boolean z = false;
            TmoUserStatus tmoUserStatus = list.get(0);
            if (DateUtils.m5788g(tmoUserStatus.getUpdatedAt())) {
                LogUtil.m5643d("MainPresenter#", "It's been 48 hours since user status was updated. Update it now.");
                this.f12657a.m7581m();
            } else if (SubscriptionHelper.m5307u(tmoUserStatus)) {
                if (PreferenceUtils.m5393d("PREF_LAST_OFFLINE_TRIAL_DECREMENT") < DateUtils.m5791d("America/Los_Angeles")) {
                    z = true;
                }
                if (z) {
                    LogUtil.m5643d("MainPresenter#", "Need to refresh user status from MATA.");
                    this.f12657a.m7581m();
                    return;
                }
                LogUtil.m5643d("MainPresenter#", "Already decremented trial today. Do nothing.");
            } else {
                LogUtil.m5643d("MainPresenter#", "No need to update user status.");
            }
        }
    }

    /* renamed from: c */
    public int m7509c(boolean z, @Nullable String str, @Nullable String str2) {
        if (z) {
            this.f12658b = MainActivity.Tabs.SCAM_BLOCK;
        } else if (str == null || str.isEmpty()) {
            if (!m7492t()) {
                this.f12658b = MainActivity.Tabs.SCAM_BLOCK;
            } else {
                if (DeviceInfoUtils.m5752l(this.f12657a) && !PreferenceUtils.m5395b("PREF_HAS_BEEN_DIRECTED_TO_ACTIVITY_MESSAGES", false)) {
                    PreferenceUtils.m5386k("PREF_HAS_BEEN_DIRECTED_TO_ACTIVITY_MESSAGES", true);
                    PreferenceUtils.m5386k("PREF_ACTIVITY_JUMP_TO_MESSAGES", true);
                }
                this.f12658b = MainActivity.Tabs.ACTIVITY;
            }
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_CALLER_DETAILS") && str2 != null) {
            this.f12658b = MainActivity.Tabs.ACTIVITY;
            this.f12660d = true;
            this.f12663g = str2;
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_MANAGE")) {
            this.f12658b = MainActivity.Tabs.MANAGE;
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_ACTIVITY")) {
            this.f12658b = MainActivity.Tabs.ACTIVITY;
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_MY_ACCOUNT")) {
            this.f12658b = MainActivity.Tabs.SETTINGS;
            this.f12661e = true;
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_MANAGE_BLOCK")) {
            this.f12658b = MainActivity.Tabs.MANAGE;
            this.f12662f = true;
        } else if (str.equalsIgnoreCase("INTENT_KEY_START_FROM_PIN")) {
            this.f12658b = MainActivity.Tabs.SETTINGS;
            this.f12661e = true;
        }
        this.f12664h.clear();
        this.f12664h.push(this.f12658b);
        return this.f12658b.getValue();
    }

    /* renamed from: d */
    public int m7508d(int i) {
        int i2 = 0;
        int i3 = 0;
        if (i == MainActivity.Tabs.SETTINGS.getValue()) {
            boolean z = PreferenceUtils.m5395b("PREF_HAS_SHOWN_CATEGORY_MANAGER", false) || !SubscriptionHelper.m5317k();
            boolean b = PreferenceUtils.m5395b("PREF_HAS_SHOWN_CALLER_ID_PREFS", false);
            if (!z) {
                i3 = 1;
            }
            i2 = i3;
            if (!b) {
                i2 = i3 + 1;
            }
        }
        return i2;
    }

    @ColorRes
    /* renamed from: h */
    public int m7504h(boolean z) {
        return z ? !BuildUtils.m5850d() ? C1517R.C1518color.magenta : C1517R.C1518color.orchid_purple : !BuildUtils.m5850d() ? C1517R.C1518color.grey_4 : C1517R.C1518color.slate_grey;
    }

    /* renamed from: i */
    public void m7503i() {
        String str;
        if (this.f12660d && (str = this.f12663g) != null) {
            this.f12657a.m7648C(str, true);
        } else if (this.f12661e) {
            this.f12657a.m7634J();
        } else if (this.f12662f) {
            this.f12657a.m7636I(Manage.PNBTab.Block.f13504e);
        }
        this.f12661e = false;
        this.f12663g = null;
        this.f12660d = false;
    }

    /* renamed from: j */
    public boolean m7502j() {
        if (this.f12664h.isEmpty()) {
            LogUtil.m5632o("MainPresenter#", "tab stack is empty");
            return false;
        }
        LogUtil.m5632o("MainPresenter#", "removing item " + this.f12664h.peek().name());
        this.f12664h.pop();
        if (this.f12664h.isEmpty()) {
            LogUtil.m5632o("MainPresenter#", "tab stack had only one item");
            return false;
        }
        LogUtil.m5632o("MainPresenter#", "new tab is " + this.f12664h.peek().name());
        this.f12657a.m7651A0(this.f12664h.pop());
        return true;
    }

    /* renamed from: l */
    public void m7500l(MainActivity.Tabs tabs) {
        MainActivity.Tabs tabs2 = MainActivity.Tabs.ACTIVITY;
        this.f12657a.m7620Q(tabs.getValue(), m7506f(tabs), m7507e(tabs), this.f12658b.getValue() == tabs.getValue(), (tabs == tabs2 && this.f12658b != tabs2) || tabs == MainActivity.Tabs.SETTINGS);
    }

    /* renamed from: m */
    public boolean m7499m() {
        return this.f12665i;
    }

    /* renamed from: n */
    public void m7498n(List<ActivityItem> list) {
        int i = 0;
        for (ActivityItem activityItem : list) {
            if (activityItem.isUnread()) {
                i++;
            }
        }
        boolean z = this.f12658b == MainActivity.Tabs.ACTIVITY;
        MainActivity mainActivity = this.f12657a;
        MainActivity.Tabs tabs = MainActivity.Tabs.ACTIVITY;
        mainActivity.m7597b1(tabs, m7506f(tabs), m7507e(MainActivity.Tabs.ACTIVITY), z, !z);
        LogUtil.m5632o("MainPresenter#", "Got " + i + " unread items");
    }

    /* renamed from: o */
    public void m7497o(MainActivity.ScamShieldFeaturesSettings scamShieldFeaturesSettings) {
        NameIDPage nameIDPage;
        Class cls;
        int i = C15261.f12670c[scamShieldFeaturesSettings.ordinal()];
        if (i == 1) {
            cls = ProxyByDigitsFragment.class;
            nameIDPage = NameIDPage.ScamShieldFeaturesPage.C1528ProxyByDigits.f12685b;
            AnalyticsWrapper.m5865o("tap", "Proxy by Digits list item");
        } else if (i != 2) {
            LogUtil.m5631p("MainPresenter#onItemClicked", "An item was clicked at position " + scamShieldFeaturesSettings.value + ", I don't have a screen for that position");
            return;
        } else {
            cls = NewPhoneNumberFragment.class;
            nameIDPage = NameIDPage.ScamShieldFeaturesPage.C1527NewPhoneNumber.f12684b;
            AnalyticsWrapper.m5865o("tap", "New Phone Number list item");
        }
        LogUtil.m5643d("MainPresenter#onNavigateToSettingsPage", "Going to settings page - " + nameIDPage);
        ((MainApplication) this.f12657a.getApplication()).m7551E(this.f12657a, nameIDPage);
        this.f12657a.m7628M(cls, nameIDPage);
        this.f12657a.m7579n(true);
    }

    /* renamed from: p */
    public void m7496p(MainActivity.InnerSettings innerSettings) {
        NameIDPage nameIDPage;
        Class cls;
        int i = C15261.f12669b[innerSettings.ordinal()];
        if (i == 1) {
            cls = MyAccountFragment.class;
            nameIDPage = NameIDPage.SettingsPage.C1530MyAccount.f12691b;
            AnalyticsWrapper.m5865o("tap", "My account list item");
        } else if (i == 2) {
            cls = CategoryManagerFragment.class;
            nameIDPage = NameIDPage.SettingsPage.CategoryManager.f12688b;
            AnalyticsWrapper.m5865o("tap", "Category Manager list item");
        } else if (i == 3) {
            cls = CallerIdPrefsFragment.class;
            nameIDPage = NameIDPage.SettingsPage.CallerIdPrefs.f12687b;
            AnalyticsWrapper.m5865o("tap", "Caller ID Preferences list item");
        } else if (i == 4) {
            cls = NotificationsFragment.class;
            nameIDPage = NameIDPage.SettingsPage.C1531Notifications.f12692b;
            AnalyticsWrapper.m5865o("tap", "Notifications list item");
        } else if (i != 5) {
            LogUtil.m5631p("MainPresenter#onItemClicked", "An item was clicked at position " + innerSettings.value + ", I don't have a screen for that position");
            return;
        } else {
            cls = DebugFragment.class;
            nameIDPage = NameIDPage.SettingsPage.Debug.f12689b;
            AnalyticsWrapper.m5865o("tap", "Debug list item");
        }
        LogUtil.m5643d("MainPresenter#onNavigateToSettingsPage", "Going to settings page - " + nameIDPage);
        ((MainApplication) this.f12657a.getApplication()).m7551E(this.f12657a, nameIDPage);
        this.f12657a.m7628M(cls, nameIDPage);
        this.f12657a.m7579n(true);
        if (innerSettings != MainActivity.InnerSettings.MyAccount) {
            this.f12657a.m7635I0(false);
        }
    }

    /* renamed from: q */
    public void m7495q(List<TmoUserStatus> list) {
        if (list.isEmpty()) {
            this.f12666j = null;
            return;
        }
        TmoUserStatus tmoUserStatus = list.get(0);
        this.f12666j = tmoUserStatus;
        TmoUserStatus.SubscriptionType fromTypeLetter = TmoUserStatus.SubscriptionType.fromTypeLetter(tmoUserStatus.getTypeLetter());
        if (this.f12665i && !this.f12666j.isPending()) {
            LogUtil.m5632o("MainPresenter#onSubscriptionChange", "User status moved from pending to not. Showing dialog");
            boolean b = PreferenceUtils.m5395b("PREF_NOTIFY_WHEN_SYNCED", true);
            PreferenceUtils.m5386k("PREF_NOTIFY_WHEN_SYNCED", true);
            if (this.f12666j.isPendingCheckError()) {
                this.f12657a.m7601Z0();
            } else if (b) {
                WidgetUtils.m5234g(this.f12657a);
                m7513A(this.f12666j);
            }
        }
        if (fromTypeLetter == TmoUserStatus.SubscriptionType.FREE) {
            TmoUserStatus.SubscriptionStatus.ACTIVE.getTypeString().equals(this.f12666j.getStatusText());
        }
        this.f12665i = this.f12666j.isPending();
        this.f12666j.isPendingCheckError();
        this.f12657a.m7569s0(SubscriptionHelper.m5324d(this.f12666j), m7505g(this.f12666j));
    }

    /* renamed from: r */
    public void m7494r(MainActivity.Tabs tabs) {
        NameIDPage.ManageTab manageTab;
        MainActivity.Tabs tabs2 = this.f12658b;
        this.f12659c = tabs2;
        this.f12658b = tabs;
        if (!(tabs2 == tabs || tabs == this.f12664h.peek())) {
            this.f12664h.push(tabs);
            LogUtil.m5632o("MainPresenter#", "pushing " + tabs.getValue());
        }
        m7488x(tabs);
        this.f12657a.m7627M0(tabs == MainActivity.Tabs.MANAGE);
        int i = C1517R.string.general_empty_string;
        Context l = MainApplication.m7528l();
        NameIDPage d = this.f12657a.f12621g.m7163g().m7154d();
        int i2 = C15261.f12668a[tabs.ordinal()];
        if (i2 == 1) {
            i = C1517R.string.con_desc_scam_block;
            manageTab = null;
        } else if (i2 == 2) {
            if (!PermissionChecker.m5423b(this.f12657a) && !PermissionChecker.m5422c()) {
                PermissionChecker.m5421d(this.f12657a);
            }
            i = 2131689772;
            manageTab = null;
            if (l != null) {
                i = 2131689772;
                manageTab = null;
                if (this.f12659c != tabs) {
                    EventManager.m5725a(l, "Activity_List_View_Entered");
                    i = 2131689772;
                    manageTab = null;
                }
            }
        } else if (i2 == 3) {
            manageTab = ManageFragment.f13507t.m6537a();
            i = C1517R.string.con_desc_manage;
        } else if (i2 != 4) {
            manageTab = null;
        } else {
            i = 2131689821;
            manageTab = null;
            if (l != null) {
                i = 2131689821;
                manageTab = null;
                if (this.f12659c != tabs) {
                    EventManager.m5725a(l, "Settings_View_Entered");
                    i = 2131689821;
                    manageTab = null;
                }
            }
        }
        LogUtil.m5643d("MainPresenter#onTabSelected", "tab selected - " + d.m7485a());
        ((MainApplication) this.f12657a.getApplication()).m7551E(this.f12657a, d);
        if (manageTab != null && !(d instanceof NameIDPage.CallerDetailsPage)) {
            LogUtil.m5643d("MainPresenter#onTabSelected", "going to manage page - " + manageTab.m7485a());
            ((MainApplication) this.f12657a.getApplication()).m7551E(this.f12657a, manageTab);
        }
        this.f12657a.m7574p0(i);
        m7512B(true, tabs);
        m7510b(tabs);
        MainActivity.Tabs tabs3 = this.f12659c;
        MainActivity.Tabs tabs4 = MainActivity.Tabs.MANAGE;
        boolean z = tabs3 == tabs4 && this.f12658b != tabs4;
        boolean r = MainApplication.m7522r();
        if (z && !r) {
            MainApplication.m7546J();
        }
        MainActivity.Tabs tabs5 = this.f12659c;
        MainActivity.Tabs tabs6 = MainActivity.Tabs.ACTIVITY;
        boolean z2 = false;
        if (tabs5 == tabs6) {
            z2 = false;
            if (this.f12658b != tabs6) {
                z2 = true;
            }
        }
        boolean q = MainApplication.m7523q();
        LogUtil.m5643d("MainPresenter#", "onTabSelected - leaving activity? " + z2 + " on Caller Details? " + q);
        LogUtil.m5643d("MainPresenter#", "onTabSelected - prev tab = " + this.f12659c.name() + " selected tab = " + this.f12658b.name());
        if (z2 && !q) {
            MainApplication.m7544L(ActivityPresenter.CallFilterType.ALL);
        }
    }

    /* renamed from: s */
    public void m7493s(MainActivity.Tabs tabs) {
        m7512B(false, tabs);
    }

    /* renamed from: v */
    public void m7490v(NameIDPage nameIDPage) {
        LogUtil.m5639h("MainPresenter#setCurrentPage", "Setting current page to " + nameIDPage);
        this.f12667k = nameIDPage;
    }

    /* renamed from: w */
    public void m7489w(boolean z) {
        this.f12665i = z;
    }

    /* renamed from: x */
    public void m7488x(MainActivity.Tabs tabs) {
        m7491u(tabs);
        boolean z = tabs == MainActivity.Tabs.SETTINGS && this.f12657a.m7612U();
        boolean z2 = tabs == MainActivity.Tabs.ACTIVITY;
        MainActivity mainActivity = this.f12657a;
        boolean z3 = true;
        if (!z) {
            z3 = z2;
        }
        mainActivity.m7579n(z3);
    }

    /* renamed from: y */
    public boolean m7487y() {
        return Feature.PNB_MESSAGING.isOwned();
    }

    /* renamed from: z */
    public boolean m7486z() {
        return this.f12667k == NameIDPage.Activity.f12672b;
    }
}
