package com.hiya.stingray.p000ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.b0$f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b0$f.class */
final class b0$f implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ b0 f150f;

    /* renamed from: g */
    final /* synthetic */ l f151g;

    b0$f(b0 b0Var, l lVar) {
        this.f150f = b0Var;
        this.f151g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f151g.invoke(new a(this));
        return true;
    }
}
