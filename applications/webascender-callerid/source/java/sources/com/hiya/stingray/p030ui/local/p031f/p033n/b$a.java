package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.view.View;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C1844u;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f4711f;

    /* renamed from: g */
    final /* synthetic */ String f4712g;

    b$a(b bVar, String str) {
        this.f4711f = bVar;
        this.f4712g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = this.f4711f.itemView;
        k.c(view2, "itemView");
        C1844u.m833j(view2.getContext(), this.f4712g);
        c.a.d(this.f4711f.n(), "view_map_directions");
    }
}
