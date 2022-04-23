package com.hiya.stingray.p000ui.premium;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.z$h */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/z$h.class */
final class z$h implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ z f196f;

    /* renamed from: g */
    final /* synthetic */ l f197g;

    z$h(z zVar, l lVar) {
        this.f196f = zVar;
        this.f197g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f197g.invoke(new a(this));
        return true;
    }
}
