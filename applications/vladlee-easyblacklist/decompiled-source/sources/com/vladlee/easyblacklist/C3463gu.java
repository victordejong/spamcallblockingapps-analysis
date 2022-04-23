package com.vladlee.easyblacklist;

import android.widget.CompoundButton;
import android.widget.TextView;
/* renamed from: com.vladlee.easyblacklist.gu */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gu.class */
final class C3463gu implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ WhitelistActivity f19645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3463gu(WhitelistActivity whitelistActivity) {
        this.f19645a = whitelistActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C3392ee.m74b(this.f19645a, "pref_whitelist", z);
        ((TextView) this.f19645a.findViewById(2131296610)).setText(z ? 2131624221 : 2131624104);
    }
}
