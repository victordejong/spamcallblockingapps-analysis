package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.aa */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/aa.class */
public final class C3259aa implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19292a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19293b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3259aa(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19293b = lVar;
        this.f19292a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19292a, "pref_block_all_calls_if_voip", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19292a);
    }
}
