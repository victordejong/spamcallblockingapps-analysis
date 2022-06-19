package com.hiya.stingray.p030ui.local.p034g;

import android.view.View;
import androidx.fragment.app.e;
import com.hiya.stingray.p030ui.login.C1726o;
import com.hiya.stingray.util.AbstractC1837n;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.g.a$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/g/a$c.class */
final class a$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f4726f;

    a$c(a aVar) {
        this.f4726f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1726o j1 = this.f4726f.j1();
        e activity = this.f4726f.getActivity();
        if (activity == null) {
            k.o();
            throw null;
        }
        a aVar = this.f4726f;
        aVar.i1();
        j1.m1213g(activity, aVar, AbstractC1837n.f5005e, 6004);
    }
}
