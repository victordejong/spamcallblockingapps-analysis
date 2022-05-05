package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.fo */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fo.class */
final class DialogInterface$OnClickListenerC3430fo implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19602a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3430fo(SmsChatActivity smsChatActivity) {
        this.f19602a = smsChatActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
    }
}
