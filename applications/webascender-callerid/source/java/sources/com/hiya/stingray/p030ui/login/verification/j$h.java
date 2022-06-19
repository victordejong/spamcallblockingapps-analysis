package com.hiya.stingray.p030ui.login.verification;

import android.view.View;
import androidx.fragment.app.e;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$h.class */
final class j$h implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f4808f;

    j$h(j jVar) {
        this.f4808f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (j.j1(this.f4808f)) {
            this.f4808f.q1().m1186d();
        } else {
            this.f4808f.q1().m1185e();
        }
        e activity = this.f4808f.getActivity();
        if (activity == null) {
            k.o();
            throw null;
        }
        activity.setResult(-1);
        activity.finish();
    }
}
