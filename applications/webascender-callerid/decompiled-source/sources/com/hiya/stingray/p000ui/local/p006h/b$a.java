package com.hiya.stingray.p000ui.local.p006h;

import android.view.View;
import kotlin.r;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.local.h.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/h/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f50f;

    /* renamed from: g */
    final /* synthetic */ int f51g;

    b$a(b bVar, int i) {
        this.f50f = bVar;
        this.f51g = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l t = this.f50f.t();
        if (t != null) {
            r rVar = (r) t.invoke(this.f50f.u().get(this.f51g));
        }
    }
}
