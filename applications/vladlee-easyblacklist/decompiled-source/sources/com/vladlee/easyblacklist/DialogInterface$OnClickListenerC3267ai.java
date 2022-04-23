package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.ai */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ai.class */
public final class DialogInterface$OnClickListenerC3267ai implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19307a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3267ai(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19307a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
