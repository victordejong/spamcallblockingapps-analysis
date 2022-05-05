package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.s */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/s.class */
public final class DialogInterface$OnClickListenerC3481s implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19681a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3481s(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19681a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
