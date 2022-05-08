package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.az */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/az.class */
final class DialogInterface$OnClickListenerC3287az implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode$CallbackC3285ax f19352a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3287az(ActionMode$CallbackC3285ax axVar) {
        this.f19352a = axVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
