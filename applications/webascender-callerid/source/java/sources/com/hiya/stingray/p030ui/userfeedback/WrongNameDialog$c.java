package com.hiya.stingray.p030ui.userfeedback;

import android.content.DialogInterface;
import com.hiya.stingray.util.C1808e0;
/* renamed from: com.hiya.stingray.ui.userfeedback.WrongNameDialog$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/WrongNameDialog$c.class */
class WrongNameDialog$c implements DialogInterface.OnShowListener {

    /* renamed from: a */
    final /* synthetic */ WrongNameDialog f4944a;

    WrongNameDialog$c(WrongNameDialog wrongNameDialog) {
        this.f4944a = wrongNameDialog;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        C1808e0.m935x(this.f4944a.getActivity(), this.f4944a.wrongNameTv);
    }
}
