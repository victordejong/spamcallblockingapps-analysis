package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import android.view.ActionMode;
/* renamed from: com.vladlee.easyblacklist.n */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/n.class */
final class DialogInterface$OnClickListenerC3476n implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActionMode f19675a;

    /* renamed from: b */
    final /* synthetic */ ActionMode$CallbackC3475m f19676b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3476n(ActionMode$CallbackC3475m mVar, ActionMode actionMode) {
        this.f19676b = mVar;
        this.f19675a = actionMode;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences$OnSharedPreferenceChangeListenerC3472l.m22a(this.f19676b.f19674a).m27a();
        this.f19675a.finish();
    }
}
