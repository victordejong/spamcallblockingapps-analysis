package com.hiya.stingray.p030ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.b0$e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b0$e.class */
final class b0$e implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ b0 f4827f;

    /* renamed from: g */
    final /* synthetic */ l f4828g;

    b0$e(b0 b0Var, l lVar) {
        this.f4827f = b0Var;
        this.f4828g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f4828g.invoke(new a(this));
        return true;
    }
}
