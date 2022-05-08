package com.vladlee.preferences;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.ListPreference;
import com.vladlee.easyblacklist.C3392ee;
/* loaded from: classes-dex2jar.jar:com/vladlee/preferences/PreferenceList.class */
public class PreferenceList extends ListPreference {
    public PreferenceList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.preference.Preference
    /* renamed from: c */
    public final boolean mo3c(String str) {
        C3392ee.m75b(m7491D(), m7446y(), str);
        return true;
    }

    @Override // androidx.preference.Preference
    /* renamed from: d */
    public final String mo2d(String str) {
        return C3392ee.m81a(m7491D(), m7446y(), str);
    }
}
