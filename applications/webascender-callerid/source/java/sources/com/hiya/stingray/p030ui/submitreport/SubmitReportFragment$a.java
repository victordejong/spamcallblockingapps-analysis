package com.hiya.stingray.p030ui.submitreport;

import android.view.View;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.c1;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$a.class */
class SubmitReportFragment$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f4937f;

    SubmitReportFragment$a(SubmitReportFragment submitReportFragment) {
        this.f4937f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c1 f1 = SubmitReportFragment.f1(this.f4937f);
        SubmitReportFragment submitReportFragment = this.f4937f;
        submitReportFragment.o.B(submitReportFragment.getContext(), f1);
        e1 e1Var = this.f4937f.p;
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m896l("report_caller");
        c1819a.m895m("report_submitted");
        e1Var.c("report_caller", c1819a.m907a());
    }
}
