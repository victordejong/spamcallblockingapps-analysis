package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.ce */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ce.class */
final class DialogInterface$OnClickListenerC3332ce implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19440a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3332ce(Activity activity) {
        this.f19440a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3391ed.m86b((Context) this.f19440a, "pref_gdpr_consent", true);
        dialogInterface.dismiss();
    }
}
