package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.aj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/aj.class */
final class DialogInterface$OnClickListenerC3268aj implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19308a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3268aj(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19308a = lVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
