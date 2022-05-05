package com.vladlee.easyblacklist;

import android.app.Activity;
import android.content.DialogInterface;
/* renamed from: com.vladlee.easyblacklist.cg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cg.class */
final class DialogInterface$OnCancelListenerC3334cg implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    final /* synthetic */ Activity f19442a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnCancelListenerC3334cg(Activity activity) {
        this.f19442a = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f19442a.finish();
    }
}
