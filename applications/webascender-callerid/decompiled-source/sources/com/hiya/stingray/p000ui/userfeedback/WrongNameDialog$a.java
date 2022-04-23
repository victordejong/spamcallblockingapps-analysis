package com.hiya.stingray.p000ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.WrongNameDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/WrongNameDialog$a.class */
class WrongNameDialog$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC0125d f263f;

    /* renamed from: g */
    final /* synthetic */ WrongNameDialog f264g;

    WrongNameDialog$a(WrongNameDialog wrongNameDialog, AbstractC0125d dVar) {
        this.f264g = wrongNameDialog;
        this.f263f = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f263f.m1014S(WrongNameDialog.t1(this.f264g), WrongNameDialog.u1(this.f264g), this.f264g.wrongNameTv.getText().toString(), true);
    }
}
