package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.Context;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.AbstractC1027o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.u */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/u.class */
public final class C3483u implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19683a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3483u(Activity activity) {
        this.f19683a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z && C3369do.m128a(this.f19683a)) {
            ((SwitchCompat) this.f19683a.findViewById(2131296575)).setChecked(false);
            C3392ee.m74b((Context) this.f19683a, "pref_block_sms_option", false);
        } else if (!z || CheckPermissionsActivity.m346c(this.f19683a)) {
            if (!z) {
                C3392ee.m80a((Context) this.f19683a, "pref_block_sms_option", false);
            }
            C3392ee.m74b(this.f19683a, "pref_block_sms_option", z);
        } else {
            ((SwitchCompat) this.f19683a.findViewById(2131296575)).setChecked(false);
            C3392ee.m74b((Context) this.f19683a, "pref_block_sms_option", false);
            CheckPermissionsActivity.m354a(this.f19683a, (AbstractC1027o) null);
        }
    }
}
