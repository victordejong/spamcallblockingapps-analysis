package com.hiya.stingray.p030ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/b$a.class */
class b$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC1787d f4945f;

    /* renamed from: g */
    final /* synthetic */ b f4946g;

    b$a(b bVar, AbstractC1787d abstractC1787d) {
        this.f4946g = bVar;
        this.f4945f = abstractC1787d;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f4945f.m1013V0(b.t1(this.f4946g));
    }
}
