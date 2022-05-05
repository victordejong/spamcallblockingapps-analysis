package com.vladlee.easyblacklist;

import android.content.DialogInterface;
import androidx.appcompat.view.AbstractC0343b;
/* renamed from: com.vladlee.easyblacklist.fm */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fm.class */
final class DialogInterface$OnClickListenerC3428fm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC0343b f19599a;

    /* renamed from: b */
    final /* synthetic */ C3427fl f19600b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3428fm(C3427fl flVar, AbstractC0343b bVar) {
        this.f19600b = flVar;
        this.f19599a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SmsChatActivity.m285a(this.f19600b.f19598a).m124a();
        this.f19599a.mo9684c();
    }
}
