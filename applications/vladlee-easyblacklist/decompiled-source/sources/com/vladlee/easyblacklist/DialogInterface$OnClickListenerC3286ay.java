package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.view.ActionMode;
/* renamed from: com.vladlee.easyblacklist.ay */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ay.class */
final class DialogInterface$OnClickListenerC3286ay implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode f19350a;

    /* renamed from: b */
    final /* synthetic */ ActionMode$CallbackC3285ax f19351b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3286ay(ActionMode$CallbackC3285ax axVar, ActionMode actionMode) {
        this.f19351b = axVar;
        this.f19350a = actionMode;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C3281av avVar;
        avVar = this.f19351b.f19349a.f19345a;
        avVar.m260a();
        this.f19350a.finish();
    }
}
