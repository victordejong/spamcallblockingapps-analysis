package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.t.h1.b;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/d$a.class */
final class d$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ d f4717f;

    /* renamed from: g */
    final /* synthetic */ b f4718g;

    d$a(d dVar, b bVar) {
        this.f4717f = dVar;
        this.f4718g = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = this.f4717f.itemView;
        k.c(view2, "itemView");
        Context context = view2.getContext();
        k.c(context, "itemView.context");
        C1808e0.m948k(context, this.f4718g.c());
        c.a.d(this.f4717f.o(), "view_coupon");
    }
}
