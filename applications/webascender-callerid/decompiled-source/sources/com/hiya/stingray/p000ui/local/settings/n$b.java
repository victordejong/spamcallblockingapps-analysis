package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import com.hiya.stingray.ui.local.c;
/* renamed from: com.hiya.stingray.ui.local.settings.n$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$b.class */
final class n$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f108f;

    n$b(n nVar) {
        this.f108f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f108f, "call_settings");
        n nVar = this.f108f;
        c.a(nVar, nVar.h1());
    }
}
