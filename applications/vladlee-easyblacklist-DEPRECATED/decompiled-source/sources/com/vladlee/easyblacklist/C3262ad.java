package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ad */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ad.class */
public final class C3262ad implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19298a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19299b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3262ad(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19299b = lVar;
        this.f19298a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19298a, "pref_block_non_numeric_sms", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19298a);
    }
}
