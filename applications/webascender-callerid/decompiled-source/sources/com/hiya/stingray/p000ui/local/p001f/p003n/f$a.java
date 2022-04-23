package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.t.h1.a;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C0146e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.f$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/f$a.class */
final class f$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ f f40f;

    /* renamed from: g */
    final /* synthetic */ a f41g;

    f$a(f fVar, a aVar) {
        this.f40f = fVar;
        this.f41g = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k.c(view, "it");
        Context context = view.getContext();
        k.c(context, "it.context");
        C0146e0.m948k(context, this.f41g.c());
        c.a.d(this.f40f.o(), "view_all_reviews");
    }
}
