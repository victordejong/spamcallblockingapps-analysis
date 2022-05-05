package com.vladlee.easyblacklist;

import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.fw */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fw.class */
final class DialogInterface$OnClickListenerC3438fw implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19610a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3438fw(SmsChatActivity smsChatActivity) {
        this.f19610a = smsChatActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        long j;
        SmsChatActivity smsChatActivity = this.f19610a;
        j = smsChatActivity.f19272l;
        C3318by.m177e(smsChatActivity, j);
        this.f19610a.finish();
    }
}
