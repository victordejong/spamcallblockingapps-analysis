package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.r */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/r.class */
public final class DialogInterface$OnClickListenerC3480r implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19680a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3480r(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19680a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f19680a.m6x();
    }
}
