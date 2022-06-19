package com.hiya.stingray.p030ui.submitreport;

import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.b$a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b.class */
public class SubmitReportFragment$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SubmitReportFragment f4938f;

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$a.class */
    class DialogInterface$OnClickListenerC1780a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC1780a(SubmitReportFragment$b submitReportFragment$b) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.submitreport.SubmitReportFragment$b$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/submitreport/SubmitReportFragment$b$b.class */
    class DialogInterface$OnClickListenerC1781b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC1781b() {
            SubmitReportFragment$b.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SubmitReportFragment$b.this.f4938f.getActivity().onBackPressed();
        }
    }

    SubmitReportFragment$b(SubmitReportFragment submitReportFragment) {
        this.f4938f = submitReportFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f4938f.comments.getText().length() == 0) {
            this.f4938f.getActivity().onBackPressed();
            return;
        }
        b$a b_a = new b$a(this.f4938f.getContext());
        b_a.m6887d(true);
        b_a.m6884g(2131821279);
        b_a.m6878m(2131821278, new DialogInterface$OnClickListenerC1781b());
        b_a.m6882i(2131820707, new DialogInterface$OnClickListenerC1780a(this));
        b_a.m6890a().show();
    }
}
