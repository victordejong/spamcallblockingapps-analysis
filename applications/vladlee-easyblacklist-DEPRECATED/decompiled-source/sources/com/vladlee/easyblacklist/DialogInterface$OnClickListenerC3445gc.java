package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.gc */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gc.class */
final class DialogInterface$OnClickListenerC3445gc implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode$CallbackC3440fy f19622a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3445gc(ActionMode$CallbackC3440fy fyVar) {
        this.f19622a = fyVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
