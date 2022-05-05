package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ag */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ag.class */
public final class DialogInterface$OnClickListenerC3265ag implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19304a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3265ag(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19304a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
