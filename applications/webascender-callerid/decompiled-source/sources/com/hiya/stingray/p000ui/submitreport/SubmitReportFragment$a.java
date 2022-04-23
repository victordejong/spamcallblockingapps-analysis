package com.hiya.stingray.p000ui.submitreport;

import android.view.View;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.c1;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$a.class */
class SubmitReportFragment$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f258f;

    SubmitReportFragment$a(SubmitReportFragment submitReportFragment) {
        this.f258f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c1 f1 = SubmitReportFragment.f1(this.f258f);
        SubmitReportFragment submitReportFragment = this.f258f;
        submitReportFragment.o.B(submitReportFragment.getContext(), f1);
        e1 e1Var = this.f258f.p;
        AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
        aVar.m896l("report_caller");
        aVar.m895m("report_submitted");
        e1Var.c("report_caller", aVar.m907a());
    }
}
