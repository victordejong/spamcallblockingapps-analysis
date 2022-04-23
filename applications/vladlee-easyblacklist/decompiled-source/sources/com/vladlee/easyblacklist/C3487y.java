package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.y */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/y.class */
public final class C3487y implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19690a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19691b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3487y(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19691b = lVar;
        this.f19690a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19690a, "pref_block_all_calls", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19690a);
    }
}
