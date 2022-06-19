package androidx.preference;

import android.widget.CompoundButton;
/* loaded from: classes-dex2jar.jar:androidx/preference/CheckBoxPreference$a.class */
class CheckBoxPreference$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ CheckBoxPreference f1726a;

    CheckBoxPreference$a(CheckBoxPreference checkBoxPreference) {
        this.f1726a = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!this.f1726a.m5381d(Boolean.valueOf(z))) {
            compoundButton.setChecked(!z);
        } else {
            this.f1726a.m0(z);
        }
    }
}
