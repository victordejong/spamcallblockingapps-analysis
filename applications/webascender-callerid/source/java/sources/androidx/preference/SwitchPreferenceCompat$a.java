package androidx.preference;

import android.widget.CompoundButton;
/* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreferenceCompat$a.class */
class SwitchPreferenceCompat$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ SwitchPreferenceCompat f1752a;

    SwitchPreferenceCompat$a(SwitchPreferenceCompat switchPreferenceCompat) {
        this.f1752a = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!this.f1752a.m5381d(Boolean.valueOf(z))) {
            compoundButton.setChecked(!z);
        } else {
            this.f1752a.m0(z);
        }
    }
}
