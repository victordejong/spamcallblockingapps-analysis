package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.core.content.C0646b;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.AbstractC1027o;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreferenceCompat;
/* renamed from: com.vladlee.easyblacklist.ey */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ey.class */
public final class C3413ey extends AbstractC1027o {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m55a(C3413ey eyVar, Context context) {
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(context);
        aVar.m9791b(2131624130);
        aVar.m9796a(eyVar.getResources().getString(2131624052), new DialogInterface$OnClickListenerC3417fb(eyVar, context));
        aVar.m9787b(eyVar.getResources().getString(2131624009), new DialogInterface$OnClickListenerC3418fc(eyVar));
        aVar.m9792b().show();
    }

    @Override // androidx.preference.AbstractC1027o
    /* renamed from: b */
    public final void mo54b(String str) {
        PreferenceScreen preferenceScreen;
        m7387c(str);
        if (Build.VERSION.SDK_INT < 19 && (preferenceScreen = (PreferenceScreen) mo7391a("pref_notifications")) != null) {
            Preference a = mo7391a("pref_show_notifications_blocking");
            if (a != null) {
                preferenceScreen.m7435b(a);
            }
            Preference a2 = mo7391a("pref_show_notifications_incoming");
            if (a2 != null) {
                preferenceScreen.m7435b(a2);
            }
        }
        Preference a3 = mo7391a("pref_whitelist");
        if (a3 != null) {
            a3.m7479a((Preference.AbstractC0992c) new C3414ez(this));
            a3.m7460e(C3392ee.m80a((Context) getActivity(), "pref_whitelist", true) ? 2131624221 : 2131624104);
        }
        Preference a4 = mo7391a("pref_support");
        if (a4 != null) {
            a4.m7479a((Preference.AbstractC0992c) new C3419fd(this));
            mo7391a("pref_submit_review").m7479a((Preference.AbstractC0992c) new C3420fe(this));
            mo7391a("pref_other_apps").m7479a((Preference.AbstractC0992c) new C3421ff(this));
            mo7391a("pref_share").m7479a((Preference.AbstractC0992c) new C3422fg(this));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) mo7391a("pref_block_calls_option");
        if (switchPreferenceCompat != null) {
            switchPreferenceCompat.m7480a((Preference.AbstractC0991b) new C3423fh(this));
        }
        SwitchPreferenceCompat switchPreferenceCompat2 = (SwitchPreferenceCompat) mo7391a("pref_block_sms_option");
        if (switchPreferenceCompat2 != null) {
            switchPreferenceCompat2.m7480a((Preference.AbstractC0991b) new C3424fi(this));
        }
        SwitchPreferenceCompat switchPreferenceCompat3 = (SwitchPreferenceCompat) mo7391a("pref_schedule_enable");
        if (switchPreferenceCompat3 != null) {
            C3399ek.m64a(this);
            switchPreferenceCompat3.m7480a((Preference.AbstractC0991b) new C3425fj(this));
        }
        SwitchPreferenceCompat switchPreferenceCompat4 = (SwitchPreferenceCompat) mo7391a("pref_password_on_start");
        if (switchPreferenceCompat4 != null) {
            switchPreferenceCompat4.m7479a((Preference.AbstractC0992c) new C3426fk(this));
        }
        SwitchPreferenceCompat switchPreferenceCompat5 = (SwitchPreferenceCompat) mo7391a("pref_show_status_bar_icon");
        if (switchPreferenceCompat5 != null) {
            switchPreferenceCompat5.m7479a((Preference.AbstractC0992c) new C3416fa(this));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001 && Build.VERSION.SDK_INT >= 19) {
            FragmentActivity activity = getActivity();
            boolean c = CheckPermissionsActivity.m346c(activity);
            boolean a = C3369do.m127a((Context) activity);
            if (a && c) {
                C3392ee.m74b((Context) activity, "pref_block_sms_option", true);
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) mo7391a("pref_block_sms_option");
                if (switchPreferenceCompat != null) {
                    switchPreferenceCompat.m7412f(true);
                }
            } else if (a) {
                CheckPermissionsActivity.m354a(activity, this);
            } else {
                C3392ee.m74b((Context) activity, "pref_block_sms_option", false);
            }
            BlockService.m367a(activity);
        }
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 10005) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (iArr[0] == 0) {
            SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) mo7391a("pref_block_sms_option");
            if (switchPreferenceCompat != null) {
                switchPreferenceCompat.m7412f(true);
            }
            C3392ee.m74b(getContext(), "pref_block_sms_option", true);
        } else {
            C3392ee.m74b(getContext(), "pref_block_sms_option", false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        Preference a = mo7391a("pref_whitelist");
        if (a == null) {
            return;
        }
        if (C3392ee.m80a((Context) getActivity(), "pref_whitelist", true)) {
            a.m7460e(2131624221);
        } else {
            a.m7460e(2131624104);
        }
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(C0646b.m8612c(getContext(), 2131099796));
        m7392a(new ColorDrawable(0));
        m7389c(0);
    }
}
