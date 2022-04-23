package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.q */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/q.class */
public final class DialogInterface$OnClickListenerC3479q implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19679a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3479q(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19679a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
