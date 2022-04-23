package com.hiya.stingray.p000ui.local.settings;

import android.view.View;
import com.hiya.stingray.ui.local.c;
/* renamed from: com.hiya.stingray.ui.local.settings.n$e */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$e.class */
final class n$e implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f111f;

    n$e(n nVar) {
        this.f111f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f111f, "about");
        c.a(this.f111f, new AboutFragment());
    }
}
