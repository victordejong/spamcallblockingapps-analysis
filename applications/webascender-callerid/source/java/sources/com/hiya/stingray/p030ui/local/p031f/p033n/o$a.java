package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.t.h1.f;
import com.hiya.stingray.t.h1.g;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.o$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/o$a.class */
final class o$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ o f4723f;

    /* renamed from: g */
    final /* synthetic */ f f4724g;

    o$a(o oVar, f fVar) {
        this.f4723f = oVar;
        this.f4724g = fVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k.c(view, "it");
        Context context = view.getContext();
        k.c(context, "it.context");
        C1808e0.m948k(context, this.f4724g.c());
        c.a.d(this.f4723f.n(), this.f4724g.b() == g.RESERVATION ? "make_reservations" : "order_delivery");
    }
}
