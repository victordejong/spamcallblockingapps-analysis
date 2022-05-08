package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Build;
/* renamed from: com.vladlee.easyblacklist.dr */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dr.class */
final class DialogInterface$OnClickListenerC3372dr implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19514a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3372dr(Activity activity) {
        this.f19514a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            C3369do.m126b(this.f19514a);
        }
    }
}
