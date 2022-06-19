package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import com.hiya.stingray.ui.local.c;
import com.hiya.stingray.ui.local.screener.CallScreenerFragment;
/* renamed from: com.hiya.stingray.ui.local.settings.n$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$c.class */
final class n$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f4788f;

    n$c(n nVar) {
        this.f4788f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f4788f, "call_screener");
        c.a(this.f4788f, new CallScreenerFragment());
    }
}
