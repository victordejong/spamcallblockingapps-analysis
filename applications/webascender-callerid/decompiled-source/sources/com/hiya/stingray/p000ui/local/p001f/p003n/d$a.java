package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.t.h1.b;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C0146e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/d$a.class */
final class d$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ d f38f;

    /* renamed from: g */
    final /* synthetic */ b f39g;

    d$a(d dVar, b bVar) {
        this.f38f = dVar;
        this.f39g = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = ((RecyclerView.d0) this.f38f).itemView;
        k.c(view2, "itemView");
        Context context = view2.getContext();
        k.c(context, "itemView.context");
        C0146e0.m948k(context, this.f39g.c());
        c.a.d(this.f38f.o(), "view_coupon");
    }
}
