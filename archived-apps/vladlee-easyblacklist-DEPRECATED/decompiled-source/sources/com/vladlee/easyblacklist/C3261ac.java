package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ac */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ac.class */
public final class C3261ac implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19296a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19297b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3261ac(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19297b = lVar;
        this.f19296a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19296a, "pref_block_unknown_sms", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19296a);
    }
}
