package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import com.hiya.stingray.ui.local.c;
/* renamed from: com.hiya.stingray.ui.local.settings.n$d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$d.class */
final class n$d implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f4789f;

    n$d(n nVar) {
        this.f4789f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f4789f, "help");
        c.a(this.f4789f, new HelpFragment());
    }
}
