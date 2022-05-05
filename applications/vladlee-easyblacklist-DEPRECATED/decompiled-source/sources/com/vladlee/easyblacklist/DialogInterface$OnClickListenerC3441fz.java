package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.view.ActionMode;
/* renamed from: com.vladlee.easyblacklist.fz */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fz.class */
final class DialogInterface$OnClickListenerC3441fz implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode f19616a;

    /* renamed from: b */
    final /* synthetic */ ActionMode$CallbackC3440fy f19617b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3441fz(ActionMode$CallbackC3440fy fyVar, ActionMode actionMode) {
        this.f19617b = fyVar;
        this.f19616a = actionMode;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3314bw bwVar;
        bwVar = this.f19617b.f19615a.f19612b;
        bwVar.m207a();
        this.f19616a.finish();
    }
}
