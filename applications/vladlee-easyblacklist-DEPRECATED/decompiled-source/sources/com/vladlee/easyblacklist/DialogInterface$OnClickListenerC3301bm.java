package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.bm */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bm.class */
public final class DialogInterface$OnClickListenerC3301bm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19372a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3301bm(Activity activity) {
        this.f19372a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        CheckPermissionsActivity.m353a(this.f19372a);
    }
}
