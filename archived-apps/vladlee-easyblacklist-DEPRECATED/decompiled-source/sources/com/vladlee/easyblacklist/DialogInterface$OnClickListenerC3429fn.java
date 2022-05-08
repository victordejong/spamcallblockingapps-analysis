package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.fn */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fn.class */
final class DialogInterface$OnClickListenerC3429fn implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C3427fl f19601a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3429fn(C3427fl flVar) {
        this.f19601a = flVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
