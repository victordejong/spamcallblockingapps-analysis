package com.hiya.stingray.p000ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.b0$e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b0$e.class */
final class b0$e implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ b0 f148f;

    /* renamed from: g */
    final /* synthetic */ l f149g;

    b0$e(b0 b0Var, l lVar) {
        this.f148f = b0Var;
        this.f149g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f149g.invoke(new a(this));
        return true;
    }
}
