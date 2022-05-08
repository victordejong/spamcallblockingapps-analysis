package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.x */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/x.class */
public final class C3486x implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19688a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19689b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3486x(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19689b = lVar;
        this.f19688a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19688a, "pref_block_unknown_calls", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19688a);
    }
}
