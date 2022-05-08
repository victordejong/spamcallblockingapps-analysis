package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.view.ActionMode;
/* renamed from: com.vladlee.easyblacklist.gb */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gb.class */
final class DialogInterface$OnClickListenerC3444gb implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode f19620a;

    /* renamed from: b */
    final /* synthetic */ ActionMode$CallbackC3440fy f19621b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3444gb(ActionMode$CallbackC3440fy fyVar, ActionMode actionMode) {
        this.f19621b = fyVar;
        this.f19620a = actionMode;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3314bw bwVar;
        bwVar = this.f19621b.f19615a.f19612b;
        bwVar.m206b();
        this.f19620a.finish();
    }
}
