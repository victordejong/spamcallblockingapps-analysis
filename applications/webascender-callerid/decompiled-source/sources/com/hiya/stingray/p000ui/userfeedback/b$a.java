package com.hiya.stingray.p000ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/b$a.class */
class b$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC0125d f266f;

    /* renamed from: g */
    final /* synthetic */ b f267g;

    b$a(b bVar, AbstractC0125d dVar) {
        this.f267g = bVar;
        this.f266f = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f266f.m1013V0(b.t1(this.f267g));
    }
}
