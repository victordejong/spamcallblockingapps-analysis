package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.fb */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fb.class */
public final class DialogInterface$OnClickListenerC3417fb implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f19587a;

    /* renamed from: b */
    final /* synthetic */ C3413ey f19588b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3417fb(C3413ey eyVar, Context context) {
        this.f19588b = eyVar;
        this.f19587a = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SettingsActivity.m292a(this.f19587a);
    }
}
