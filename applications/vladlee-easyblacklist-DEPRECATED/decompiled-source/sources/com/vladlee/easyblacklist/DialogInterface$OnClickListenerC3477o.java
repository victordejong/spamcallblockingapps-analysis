package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.o */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/o.class */
final class DialogInterface$OnClickListenerC3477o implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode$CallbackC3475m f19677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3477o(ActionMode$CallbackC3475m mVar) {
        this.f19677a = mVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
