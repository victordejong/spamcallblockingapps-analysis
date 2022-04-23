package com.hiya.stingray.p000ui.premium.upsell;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$i.class */
final class c$i implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ c f178f;

    /* renamed from: g */
    final /* synthetic */ l f179g;

    c$i(c cVar, l lVar) {
        this.f178f = cVar;
        this.f179g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f179g.invoke(new a(this));
        return true;
    }
}
