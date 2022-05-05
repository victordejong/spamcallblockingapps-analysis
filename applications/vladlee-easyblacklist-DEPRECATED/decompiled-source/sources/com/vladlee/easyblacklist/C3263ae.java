package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ae */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ae.class */
public final class C3263ae implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19300a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19301b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3263ae(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19301b = lVar;
        this.f19300a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19300a, "pref_block_all_sms", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19300a);
    }
}
