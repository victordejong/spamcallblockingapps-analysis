package com.hiya.stingray.p000ui.userfeedback;

import android.content.DialogInterface;
import com.hiya.stingray.util.C0146e0;
/* renamed from: com.hiya.stingray.ui.userfeedback.WrongNameDialog$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/WrongNameDialog$c.class */
class WrongNameDialog$c implements DialogInterface.OnShowListener {

    /* renamed from: a */
    final /* synthetic */ WrongNameDialog f265a;

    WrongNameDialog$c(WrongNameDialog wrongNameDialog) {
        this.f265a = wrongNameDialog;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        C0146e0.m935x(this.f265a.getActivity(), this.f265a.wrongNameTv);
    }
}
