package com.hiya.stingray.p000ui.submitreport;

import android.view.View;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.s.c1;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$a.class */
class SubmitReportFragment$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f143f;

    SubmitReportFragment$a(SubmitReportFragment submitReportFragment) {
        this.f143f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        c1 f1 = SubmitReportFragment.f1(this.f143f);
        SubmitReportFragment submitReportFragment = this.f143f;
        submitReportFragment.o.B(submitReportFragment.getContext(), f1);
        e1 e1Var = this.f143f.p;
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m975l("report_caller");
        aVar.m974m("report_submitted");
        e1Var.c("report_caller", aVar.m986a());
    }
}
