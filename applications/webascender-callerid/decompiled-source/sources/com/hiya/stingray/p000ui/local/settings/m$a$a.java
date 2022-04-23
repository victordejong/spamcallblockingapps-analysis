package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import android.widget.Switch;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.o;
import com.hiya.stingray.t.a1;
import com.hiya.stingray.ui.local.settings.m;
import kotlin.r;
import kotlin.w.b.p;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.m$a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/m$a$a.class */
final class m$a$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ m.a f103f;

    /* renamed from: g */
    final /* synthetic */ a1 f104g;

    m$a$a(m.a aVar, a1 a1Var) {
        this.f103f = aVar;
        this.f104g = a1Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f104g.g()) {
            View view2 = ((RecyclerView.d0) this.f103f).itemView;
            k.c(view2, "itemView");
            ((Switch) view2.findViewById(o.m4)).toggle();
            return;
        }
        p c = this.f103f.a.c();
        if (c != null) {
            r rVar = (r) c.invoke(this.f104g, (Object) null);
        }
    }
}
