package com.hiya.stingray.p000ui.premium.upsell;

import android.view.View;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$j.class */
final class c$j implements View.OnLongClickListener {

    /* renamed from: f */
    final /* synthetic */ c f180f;

    /* renamed from: g */
    final /* synthetic */ l f181g;

    c$j(c cVar, l lVar) {
        this.f180f = cVar;
        this.f181g = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f181g.invoke(new a(this));
        return true;
    }
}
