package com.vladlee.easyblacklist;

import android.app.Activity;
import android.widget.CompoundButton;
/* renamed from: com.vladlee.easyblacklist.t */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/t.class */
final class C3482t implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19682a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3482t(Activity activity) {
        this.f19682a = activity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19682a, "pref_block_calls_option", z);
    }
}
