package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import com.hiya.stingray.ui.local.c;
/* renamed from: com.hiya.stingray.ui.local.settings.n$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$b.class */
final class n$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f4787f;

    n$b(n nVar) {
        this.f4787f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f4787f, "call_settings");
        n nVar = this.f4787f;
        c.a(nVar, nVar.h1());
    }
}
