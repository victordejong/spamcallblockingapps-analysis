package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.ga */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ga.class */
final class DialogInterface$OnClickListenerC3443ga implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode$CallbackC3440fy f19619a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3443ga(ActionMode$CallbackC3440fy fyVar) {
        this.f19619a = fyVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
