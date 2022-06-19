package com.hiya.stingray.p030ui.premium.upsell;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$i.class */
final class c$i implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ c f4857f;

    /* renamed from: g */
    final /* synthetic */ l f4858g;

    c$i(c cVar, l lVar) {
        this.f4857f = cVar;
        this.f4858g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f4858g.invoke(new a(this));
        return true;
    }
}
