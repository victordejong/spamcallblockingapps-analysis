package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.view.ActionMode;
/* renamed from: com.vladlee.easyblacklist.gp */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gp.class */
final class DialogInterface$OnClickListenerC3458gp implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode f19639a;

    /* renamed from: b */
    final /* synthetic */ ActionMode$CallbackC3457go f19640b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3458gp(ActionMode$CallbackC3457go goVar, ActionMode actionMode) {
        this.f19640b = goVar;
        this.f19639a = actionMode;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        WhitelistActivity.m272a(this.f19640b.f19638a).m125a();
        this.f19639a.finish();
    }
}
