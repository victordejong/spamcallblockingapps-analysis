package com.vladlee.easyblacklist;

import android.content.Intent;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fg.class */
final class C3422fg implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19593a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3422fg(C3413ey eyVar) {
        this.f19593a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", "http://play.google.com/store/apps/details?id=" + this.f19593a.getActivity().getPackageName());
        C3413ey eyVar = this.f19593a;
        eyVar.startActivity(Intent.createChooser(intent, eyVar.getString(2131624188)));
        return true;
    }
}
