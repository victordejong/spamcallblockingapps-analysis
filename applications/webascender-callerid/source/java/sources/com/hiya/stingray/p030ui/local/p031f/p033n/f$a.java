package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.t.h1.a;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.f$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/f$a.class */
final class f$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ f f4719f;

    /* renamed from: g */
    final /* synthetic */ a f4720g;

    f$a(f fVar, a aVar) {
        this.f4719f = fVar;
        this.f4720g = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        k.c(view, "it");
        Context context = view.getContext();
        k.c(context, "it.context");
        C1808e0.m948k(context, this.f4720g.c());
        c.a.d(this.f4719f.o(), "view_all_reviews");
    }
}
