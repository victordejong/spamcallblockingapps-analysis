package com.hiya.stingray.p000ui.local.p004g;

import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.p000ui.login.C0064o;
import com.hiya.stingray.util.AbstractC0175n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.g.a$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/g/a$c.class */
final class a$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f47f;

    a$c(a aVar) {
        this.f47f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0064o j1 = this.f47f.j1();
        e activity = this.f47f.getActivity();
        if (activity != null) {
            a aVar = this.f47f;
            aVar.i1();
            j1.m1213g(activity, aVar, AbstractC0175n.f326e, 6004);
            return;
        }
        k.o();
        throw null;
    }
}
