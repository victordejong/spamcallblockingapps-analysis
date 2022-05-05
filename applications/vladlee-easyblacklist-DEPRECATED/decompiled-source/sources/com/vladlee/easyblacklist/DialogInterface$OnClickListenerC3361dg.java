package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.dg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dg.class */
final class DialogInterface$OnClickListenerC3361dg implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C3363di f19490a;

    /* renamed from: b */
    final /* synthetic */ C3360df f19491b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3361dg(C3360df dfVar, C3363di diVar) {
        this.f19491b = dfVar;
        this.f19490a = diVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m16b(this.f19490a.f19494b);
        this.f19491b.f19489d.dismiss();
    }
}
