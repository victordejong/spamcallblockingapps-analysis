package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.ui.local.f.c;
import com.hiya.stingray.util.C0182u;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f32f;

    /* renamed from: g */
    final /* synthetic */ String f33g;

    b$a(b bVar, String str) {
        this.f32f = bVar;
        this.f33g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2 = ((RecyclerView.d0) this.f32f).itemView;
        k.c(view2, "itemView");
        C0182u.m833j(view2.getContext(), this.f33g);
        c.a.d(this.f32f.n(), "view_map_directions");
    }
}
