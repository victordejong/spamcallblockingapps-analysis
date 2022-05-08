package com.vladlee.easyblacklist;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
/* renamed from: com.vladlee.easyblacklist.fk */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fk.class */
final class C3426fk implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19597a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3426fk(C3413ey eyVar) {
        this.f19597a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        FragmentActivity activity = this.f19597a.getActivity();
        C3392ee.m74b((Context) activity, "pref_password_on_start", false);
        ((SwitchPreferenceCompat) preference).m7412f(false);
        C3413ey.m55a(this.f19597a, activity);
        return true;
    }
}
