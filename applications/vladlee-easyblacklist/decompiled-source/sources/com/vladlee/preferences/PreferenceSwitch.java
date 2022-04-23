package com.vladlee.preferences;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.SwitchPreferenceCompat;
import com.vladlee.easyblacklist.C3392ee;
/* loaded from: classes-dex2jar.jar:com/vladlee/preferences/PreferenceSwitch.class */
public class PreferenceSwitch extends SwitchPreferenceCompat {
    public PreferenceSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.preference.Preference
    /* renamed from: d */
    public final boolean mo1d(boolean z) {
        C3392ee.m74b(m7491D(), m7446y(), z);
        return true;
    }

    @Override // androidx.preference.Preference
    /* renamed from: e */
    public final boolean mo0e(boolean z) {
        return C3392ee.m80a(m7491D(), m7446y(), z);
    }
}
