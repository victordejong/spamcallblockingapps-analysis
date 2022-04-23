package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.v */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/v.class */
public final class C3484v implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19684a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19685b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3484v(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar, Activity activity) {
        this.f19685b = lVar;
        this.f19684a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19684a, "pref_block_calls_option", z);
        this.f19684a.findViewById(2131296375).setEnabled(z);
        this.f19684a.findViewById(2131296377).setEnabled(z);
        this.f19684a.findViewById(2131296372).setEnabled(z);
        this.f19684a.findViewById(2131296373).setEnabled(z);
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m13d(this.f19684a);
    }
}
