package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import com.hiya.stingray.manager.d3;
import com.hiya.stingray.ui.local.c;
import com.hiya.stingray.ui.onboarding.d;
/* renamed from: com.hiya.stingray.ui.local.settings.n$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/n$a.class */
final class n$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ n f4786f;

    n$a(n nVar) {
        this.f4786f = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n.g1(this.f4786f, "finish_setting_up");
        c.a(this.f4786f, d.u.m1174a(d3.b.RECOMMENDED, true));
    }
}
