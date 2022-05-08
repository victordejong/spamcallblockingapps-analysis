package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.w */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/w.class */
public final class C3485w implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19686a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19687b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3485w(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19687b = lVar;
        this.f19686a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19686a, "pref_block_hidden_calls", z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19686a);
    }
}
