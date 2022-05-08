package com.asus.contacts.settings;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.asuscallerid.AsusCallerIDSettings;
import com.android.contacts.ezmode.h;
import com.android.contacts.preference.ContactsPreferenceActivity;
import com.android.contacts.preference.DisplayOptionsPreferenceFragment;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.android.vcard.VCardConfig;
import com.asus.contacts.b.b;
import com.asus.contacts.customize.CustomizedPreferenceActivity;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/AsusContactsSettingActivity.class */
public class AsusContactsSettingActivity extends PreferenceActivity {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2726a = AsusContactsSettingActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private boolean f2727b = false;
    private boolean c = false;
    private boolean d = false;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/AsusContactsSettingActivity$a.class */
    public static final class a extends PreferenceFragment {

        /* renamed from: a  reason: collision with root package name */
        private PreferenceScreen f2728a;

        /* renamed from: b  reason: collision with root package name */
        private PreferenceScreen f2729b;
        private PreferenceScreen c;
        private PreferenceScreen d;
        private PreferenceScreen e;
        private PreferenceScreen f;
        private PreferenceScreen g;
        private PreferenceScreen h;
        private ListPreference i;
        private PreferenceCategory j;

        @Override // android.app.Fragment
        public final void onAttach(Activity activity) {
            super.onAttach(activity);
        }

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final void onCreate(Bundle bundle) {
            Intent intent;
            super.onCreate(bundle);
            addPreferencesFromResource(2131951621);
            boolean isPhone = PhoneCapabilityTester.isPhone(getActivity());
            boolean isInOwnerMode = PhoneCapabilityTester.isInOwnerMode(getActivity());
            boolean isHighendDevice = PhoneCapabilityTester.isHighendDevice(getActivity(), 1L);
            boolean a2 = com.asus.blocklist.a.a(getActivity());
            if (CompatUtils.isMarshmallowCompatible()) {
                intent = new Intent("com.asus.asusincallui.ACTION_SETTINGS");
            } else {
                intent = new Intent("android.intent.action.MAIN");
                intent.setClassName("com.asus.asusincallui", "com.asus.asusincallui.CallingScreenFeaturesSetting");
            }
            boolean z = getActivity().getPackageManager().resolveActivity(intent, 65536) == null ? false : PhoneCapabilityTester.IsAsusDevice() || Build.VERSION.SDK_INT != 22;
            boolean z2 = false;
            if (getActivity().getPackageManager().resolveActivity(new Intent("com.asus.asusincallui.ACTION_ZENWATCH_SETTINGS"), 65536) != null) {
                z2 = false;
                if (!PhoneCapabilityTester.isCNSku()) {
                    z2 = PhoneCapabilityTester.IsAsusDevice();
                }
            }
            Log.d(AsusContactsSettingActivity.f2726a, "mHasPhoneModule:" + isPhone + ", mIsOwnerMode:" + isInOwnerMode + ", mIsHighEndDeivce:" + isHighendDevice + ", mIsCallingScreenSettingExist:" + z + ", mIsZenWatchSettingExist:" + z2);
            this.f2728a = (PreferenceScreen) findPreference("asuscontacts_setting");
            this.f2729b = (PreferenceScreen) findPreference("asuscontacts_call_setting");
            if (!isPhone || !isInOwnerMode) {
                this.f2728a.removePreference(this.f2729b);
            } else {
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 5)) {
                    this.f2729b.setWidgetLayoutResource(2131427623);
                }
                this.f2729b.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.1
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 5);
                        ImplicitIntentsUtil.startActivityOutsideApp(a.this.getActivity(), MainDialtactsActivity.getCallSettingsIntent(), false);
                        return true;
                    }
                });
            }
            this.c = (PreferenceScreen) findPreference("asuscontacts_calling_screen_setting");
            if (!isPhone || !isInOwnerMode || !isHighendDevice || !z) {
                this.f2728a.removePreference(this.c);
            } else {
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 6)) {
                    this.c.setWidgetLayoutResource(2131427623);
                }
                this.c.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.2
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        Intent intent2;
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 6);
                        if (CompatUtils.isMarshmallowCompatible()) {
                            intent2 = new Intent("com.asus.asusincallui.ACTION_SETTINGS");
                        } else {
                            intent2 = new Intent("android.intent.action.MAIN");
                            intent2.setPackage("com.asus.asusincallui");
                            intent2.setClassName("com.asus.asusincallui", "com.asus.asusincallui.CallingScreenFeaturesSetting");
                        }
                        intent2.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                        CallUtil.startActivityWithErrorToast(a.this.getActivity(), intent2);
                        return true;
                    }
                });
            }
            this.d = (PreferenceScreen) findPreference("asuscontacts_dialpad_setting");
            if (isPhone) {
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 4)) {
                    this.d.setWidgetLayoutResource(2131427623);
                }
                this.d.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.3
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 4);
                        Intent intent2 = new Intent(a.this.getActivity(), AsusDialerSettingActivity.class);
                        intent2.putExtra("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", true);
                        ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), intent2);
                        return true;
                    }
                });
            } else {
                this.f2728a.removePreference(this.d);
            }
            this.e = (PreferenceScreen) findPreference("asuscontacts_contact_setting");
            if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 1)) {
                this.e.setWidgetLayoutResource(2131427623);
            }
            this.e.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.4
                @Override // android.preference.Preference.OnPreferenceClickListener
                public final boolean onPreferenceClick(Preference preference) {
                    AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 1);
                    Intent intent2 = new Intent(a.this.getActivity(), ContactsPreferenceActivity.class);
                    if (!a.this.getResources().getBoolean(Resources.getSystem().getIdentifier("preferences_prefer_dual_pane", "bool", "android"))) {
                        intent2.putExtra(":android:show_fragment", DisplayOptionsPreferenceFragment.class.getName());
                        intent2.putExtra(":android:show_fragment_title", 2131755969);
                    }
                    intent2.putExtra("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", true);
                    ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), intent2);
                    return true;
                }
            });
            this.f = (PreferenceScreen) findPreference("asuscontacts_asuscallerid_setting");
            boolean c = com.asus.a.a.c(getActivity());
            if (CompatUtils.isNCompatible()) {
                if (TelecomUtil.isDefaultDialer(getActivity()) || c) {
                    if (c) {
                        this.f.setTitle(2131756236);
                    } else {
                        this.f.setTitle(2131755204);
                    }
                    if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 7)) {
                        this.f.setWidgetLayoutResource(2131427623);
                    }
                    this.f.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.5
                        @Override // android.preference.Preference.OnPreferenceClickListener
                        public final boolean onPreferenceClick(Preference preference) {
                            AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 1);
                            ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), new Intent(a.this.getActivity(), AsusCallerIDSettings.class));
                            return true;
                        }
                    });
                } else {
                    this.f2728a.removePreference(this.f);
                }
            } else if (a2) {
                if (c) {
                    this.f.setTitle(2131756236);
                } else {
                    this.f.setTitle(2131755204);
                }
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 7)) {
                    this.f.setWidgetLayoutResource(2131427623);
                }
                this.f.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.6
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 1);
                        ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), new Intent(a.this.getActivity(), AsusCallerIDSettings.class));
                        return true;
                    }
                });
            } else {
                this.f2728a.removePreference(this.f);
            }
            this.h = (PreferenceScreen) findPreference("asuscontacts_zen_watch_setting");
            if (z2) {
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 11)) {
                    this.h.setWidgetLayoutResource(2131427623);
                }
                this.h.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.7
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 11);
                        Intent intent2 = new Intent();
                        intent2.setAction("com.asus.asusincallui.ACTION_ZENWATCH_SETTINGS");
                        ImplicitIntentsUtil.startActivityOutsideApp(a.this.getActivity(), intent2, false);
                        return true;
                    }
                });
            } else {
                this.f2728a.removePreference(this.h);
            }
            this.g = (PreferenceScreen) findPreference("asuscontacts_customized_setting");
            if (isPhone) {
                getActivity();
                b.a();
                if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 10)) {
                    this.g.setWidgetLayoutResource(2131427623);
                }
                this.g.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.8
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public final boolean onPreferenceClick(Preference preference) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(a.this.getActivity(), 10);
                        Intent intent2 = new Intent(a.this.getActivity(), CustomizedPreferenceActivity.class);
                        intent2.putExtra("PREF_LAUNCHED_FROM_ASUS_CONTACTS_SETTINGS", true);
                        ImplicitIntentsUtil.startActivityInApp(a.this.getActivity(), intent2);
                        return true;
                    }
                });
            } else {
                this.f2728a.removePreference(this.g);
            }
            this.i = (ListPreference) getPreferenceScreen().findPreference("swipe_to_do_action_list");
            this.j = (PreferenceCategory) getPreferenceScreen().findPreference("general_category");
            if (isPhone) {
                getActivity();
                b.a();
                this.i.setSummary(this.i.getEntry());
                this.i.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.asus.contacts.settings.AsusContactsSettingActivity.a.9
                    @Override // android.preference.Preference.OnPreferenceChangeListener
                    public final boolean onPreferenceChange(Preference preference, Object obj) {
                        preference.setSummary(a.this.getResources().getStringArray(2130837529)[Integer.valueOf((String) obj).intValue()]);
                        return true;
                    }
                });
                return;
            }
            this.f2728a.removePreference(this.i);
            this.f2728a.removePreference(this.j);
        }

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
            onCreateView.setBackgroundColor(getResources().getColor(17170443));
            return onCreateView;
        }

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final void onDestroy() {
            super.onDestroy();
            this.f2728a = null;
            this.f2729b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent;
        super.onBackPressed();
        if (this.c || h.a(getApplicationContext())) {
            intent = new Intent(this, PeopleActivity.class);
        } else {
            Intent intent2 = new Intent(this, DialtactsActivity.class);
            intent = intent2;
            if (this.d) {
                intent2.putExtra(MainDialtactsActivity.EXTRA_BACK_TO_TOOLPANEL, true);
                intent = intent2;
            }
        }
        ImplicitIntentsUtil.startActivityInApp(this, intent);
        finish();
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayOptions(14, 14);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowTitleEnabled(true);
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setTitle(2131755146);
        }
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.f2727b = getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_DIALPAD", false);
            this.c = getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_ALLCONTACTS", false);
            this.d = getIntent().getExtras().getBoolean("PREF_LAUNCHED_FROM_TOOLPANEL", false);
        }
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, (Activity) this, "Settings", true);
            return;
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(10, (Activity) this, "Settings", true);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        getFragmentManager().beginTransaction().replace(16908290, new a()).commit();
    }
}
