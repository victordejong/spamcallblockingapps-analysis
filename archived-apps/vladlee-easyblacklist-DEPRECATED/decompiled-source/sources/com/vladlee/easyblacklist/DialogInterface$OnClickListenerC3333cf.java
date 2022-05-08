package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.cf */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cf.class */
final class DialogInterface$OnClickListenerC3333cf implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3333cf(Activity activity) {
        this.f19441a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f19441a.finish();
    }
}
