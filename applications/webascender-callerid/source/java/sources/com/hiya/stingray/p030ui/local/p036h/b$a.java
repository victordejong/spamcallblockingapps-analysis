package com.hiya.stingray.p030ui.local.p036h;

import android.view.View;
import kotlin.r;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.local.h.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/h/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f4729f;

    /* renamed from: g */
    final /* synthetic */ int f4730g;

    b$a(b bVar, int i) {
        this.f4729f = bVar;
        this.f4730g = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l t = this.f4729f.t();
        if (t != null) {
            r rVar = (r) t.invoke(this.f4729f.u().get(this.f4730g));
        }
    }
}
