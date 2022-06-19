package com.hiya.stingray.p030ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.WrongNameDialog$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/WrongNameDialog$a.class */
class WrongNameDialog$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC1787d f4942f;

    /* renamed from: g */
    final /* synthetic */ WrongNameDialog f4943g;

    WrongNameDialog$a(WrongNameDialog wrongNameDialog, AbstractC1787d abstractC1787d) {
        this.f4943g = wrongNameDialog;
        this.f4942f = abstractC1787d;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f4942f.m1014S(WrongNameDialog.t1(this.f4943g), WrongNameDialog.u1(this.f4943g), this.f4943g.wrongNameTv.getText().toString(), true);
    }
}
