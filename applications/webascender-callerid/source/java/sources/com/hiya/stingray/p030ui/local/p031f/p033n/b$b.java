package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.view.View;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C1844u;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$b.class */
final class b$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f4713f;

    /* renamed from: g */
    final /* synthetic */ String f4714g;

    b$b(b bVar, String str) {
        this.f4713f = bVar;
        this.f4714g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = this.f4713f.itemView;
        k.c(view2, "itemView");
        C1844u.m841b(view2.getContext(), this.f4714g);
        c.a.a(this.f4713f.n(), "inline");
    }
}
