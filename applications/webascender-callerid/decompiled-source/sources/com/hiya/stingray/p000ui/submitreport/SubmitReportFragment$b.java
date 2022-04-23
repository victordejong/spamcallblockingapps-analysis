package com.hiya.stingray.p000ui.submitreport;

import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.b;
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b.class */
class SubmitReportFragment$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f259f;

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$a.class */
    class DialogInterface$OnClickListenerC0118a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0118a(SubmitReportFragment$b submitReportFragment$b) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$b.class */
    class DialogInterface$OnClickListenerC0119b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0119b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SubmitReportFragment$b.this.f259f.getActivity().onBackPressed();
        }
    }

    SubmitReportFragment$b(SubmitReportFragment submitReportFragment) {
        this.f259f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f259f.comments.getText().length() == 0) {
            this.f259f.getActivity().onBackPressed();
            return;
        }
        b.a aVar = new b.a(this.f259f.getContext());
        aVar.d(true);
        aVar.g(2131821279);
        aVar.m(2131821278, new DialogInterface$OnClickListenerC0119b());
        aVar.i(2131820707, new DialogInterface$OnClickListenerC0118a(this));
        aVar.a().show();
    }
}
