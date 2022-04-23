package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import androidx.fragment.app.e;
/* renamed from: com.hiya.stingray.ui.login.verification.c$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/c$b.class */
final class c$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ c f121f;

    c$b(c cVar) {
        this.f121f = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f121f.h1().m1188b();
        e activity = this.f121f.getActivity();
        if (activity != null) {
            activity.setResult(-1);
            activity.finish();
        }
    }
}
