package com.hiya.stingray.p030ui.premium.upsell;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$j.class */
final class c$j implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ c f4859f;

    /* renamed from: g */
    final /* synthetic */ l f4860g;

    c$j(c cVar, l lVar) {
        this.f4859f = cVar;
        this.f4860g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f4860g.invoke(new a(this));
        return true;
    }
}
