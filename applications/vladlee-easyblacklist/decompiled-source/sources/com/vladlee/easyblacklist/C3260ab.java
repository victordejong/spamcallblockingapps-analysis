package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.Context;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.AbstractC1027o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ab */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ab.class */
public final class C3260ab implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19294a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19295b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3260ab(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19295b = lVar;
        this.f19294a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z && C3369do.m128a(this.f19294a)) {
            ((SwitchCompat) this.f19294a.findViewById(2131296575)).setChecked(false);
            C3392ee.m74b((Context) this.f19294a, "pref_block_sms_option", false);
        } else if (!z || CheckPermissionsActivity.m346c(this.f19294a)) {
            if (!z && C3392ee.m80a((Context) this.f19294a, "pref_block_sms_option", false)) {
                this.f19295b.getActivity();
            }
            C3392ee.m74b(this.f19294a, "pref_block_sms_option", z);
            this.f19294a.findViewById(2131296378).setEnabled(z);
            this.f19294a.findViewById(2131296376).setEnabled(z);
            this.f19294a.findViewById(2131296374).setEnabled(z);
        } else {
            CheckPermissionsActivity.m354a(this.f19294a, (AbstractC1027o) null);
        }
    }
}
