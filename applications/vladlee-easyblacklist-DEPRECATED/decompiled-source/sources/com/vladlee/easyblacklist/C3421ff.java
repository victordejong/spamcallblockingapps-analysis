package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.ff */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ff.class */
final class C3421ff implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19592a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3421ff(C3413ey eyVar) {
        this.f19592a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        this.f19592a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pub:" + this.f19592a.getString(2131624152))));
        return true;
    }
}
