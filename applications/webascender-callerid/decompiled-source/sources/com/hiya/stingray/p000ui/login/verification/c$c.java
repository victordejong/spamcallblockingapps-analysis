package com.hiya.stingray.p000ui.login.verification;

import android.widget.CompoundButton;
/* renamed from: com.hiya.stingray.ui.login.verification.c$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/c$c.class */
final class c$c implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ c f122a;

    c$c(c cVar) {
        this.f122a = cVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        c.g1(this.f122a).h(z);
    }
}
