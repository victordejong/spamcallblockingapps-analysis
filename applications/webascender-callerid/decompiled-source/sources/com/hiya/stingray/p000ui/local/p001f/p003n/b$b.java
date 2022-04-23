package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C0182u;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$b.class */
final class b$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f34f;

    /* renamed from: g */
    final /* synthetic */ String f35g;

    b$b(b bVar, String str) {
        this.f34f = bVar;
        this.f35g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = ((RecyclerView.d0) this.f34f).itemView;
        k.c(view2, "itemView");
        C0182u.m841b(view2.getContext(), this.f35g);
        c.a.a(this.f34f.n(), "inline");
    }
}
