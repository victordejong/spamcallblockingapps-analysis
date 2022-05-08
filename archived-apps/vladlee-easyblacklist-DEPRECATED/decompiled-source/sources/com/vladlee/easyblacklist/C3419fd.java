package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fd */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fd.class */
final class C3419fd implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19590a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3419fd(C3413ey eyVar) {
        this.f19590a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setData(Uri.parse("mailto:"));
        intent.setType("message/rfc822");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{"support@vlmob.com"});
        C3413ey eyVar = this.f19590a;
        eyVar.startActivity(Intent.createChooser(intent, eyVar.getString(2131624181)));
        return true;
    }
}
