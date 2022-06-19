package com.hiya.stingray.p030ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.z$g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/z$g.class */
final class z$g implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ z f4873f;

    /* renamed from: g */
    final /* synthetic */ l f4874g;

    z$g(z zVar, l lVar) {
        this.f4873f = zVar;
        this.f4874g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f4874g.invoke(new a(this));
        return true;
    }
}
