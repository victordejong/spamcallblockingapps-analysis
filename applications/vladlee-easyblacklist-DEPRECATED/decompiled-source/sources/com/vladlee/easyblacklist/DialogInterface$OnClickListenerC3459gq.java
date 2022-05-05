package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.gq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gq.class */
final class DialogInterface$OnClickListenerC3459gq implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode$CallbackC3457go f19641a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3459gq(ActionMode$CallbackC3457go goVar) {
        this.f19641a = goVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
