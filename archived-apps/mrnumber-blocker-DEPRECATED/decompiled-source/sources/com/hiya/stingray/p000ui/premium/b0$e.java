package com.hiya.stingray.p000ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.b0$e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b0$e.class */
final class b0$e implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ b0 f35f;

    /* renamed from: g */
    final /* synthetic */ l f36g;

    b0$e(b0 b0Var, l lVar) {
        this.f35f = b0Var;
        this.f36g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f36g.invoke(new a(this));
        return true;
    }
}
