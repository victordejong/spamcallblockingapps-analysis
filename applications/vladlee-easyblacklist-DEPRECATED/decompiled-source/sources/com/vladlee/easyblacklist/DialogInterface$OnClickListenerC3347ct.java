package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.ct */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ct.class */
final class DialogInterface$OnClickListenerC3347ct implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ View$OnClickListenerC3345cr f19458a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3347ct(View$OnClickListenerC3345cr crVar) {
        this.f19458a = crVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
