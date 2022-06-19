package androidx.preference;

import android.widget.CompoundButton;
/* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreference$a.class */
class SwitchPreference$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f1751a;

    SwitchPreference$a(SwitchPreference switchPreference) {
        this.f1751a = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!this.f1751a.m5381d(Boolean.valueOf(z))) {
            compoundButton.setChecked(!z);
        } else {
            this.f1751a.m0(z);
        }
    }
}
