package com.hiya.stingray.p000ui.userfeedback;

import androidx.fragment.app.Fragment;
import com.hiya.stingray.s.d0;
import com.hiya.stingray.s.n0;
import com.hiya.stingray.util.C0091e0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.userfeedback.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/f.class */
public final class C0072f {
    /* renamed from: a */
    public final void m1092a(EnumC0068a aVar, d0 d0Var, Fragment fragment) {
        k.g(aVar, "feedbackDataType");
        k.g(d0Var, "callLogItem");
        k.g(fragment, "fragment");
        int i = C0071e.f153a[aVar.ordinal()];
        if (i == 1) {
            b u1 = b.u1(d0Var.p());
            k.c(u1, "NotSpamDialog.createNotS…Dialog(callLogItem.phone)");
            C0091e0.m1015w(fragment, "not_spam_tag", u1);
        } else if (i == 2) {
            String p = d0Var.p();
            n0 n = d0Var.n();
            k.c(n, "callLogItem.identityData");
            WrongNameDialog v1 = WrongNameDialog.v1(p, n.h());
            k.c(v1, "WrongNameDialog.createWr…ogItem.identityData.name)");
            C0091e0.m1015w(fragment, "wrong_name_tag", v1);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
