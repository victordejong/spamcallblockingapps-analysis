package com.hiya.stingray.p000ui.p008w;

import android.view.View;
import com.hiya.stingray.t.n0;
import kotlin.r;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.w.b$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/b$b.class */
final class b$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f281f;

    /* renamed from: g */
    final /* synthetic */ n0 f282g;

    b$b(b bVar, n0 n0Var) {
        this.f281f = bVar;
        this.f282g = n0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l n = b.n(this.f281f);
        if (n != null) {
            r rVar = (r) n.invoke(this.f282g);
        }
    }
}
