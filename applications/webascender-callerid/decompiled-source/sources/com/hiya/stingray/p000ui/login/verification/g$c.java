package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import androidx.fragment.app.e;
/* renamed from: com.hiya.stingray.ui.login.verification.g$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/g$c.class */
final class g$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ g f125f;

    g$c(g gVar) {
        this.f125f = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        e activity = this.f125f.getActivity();
        if (activity != null) {
            this.f125f.i1().m1188b();
            activity.setResult(-1);
            activity.finish();
        }
    }
}
