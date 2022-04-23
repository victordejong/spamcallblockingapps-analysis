package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.x */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/x.class */
public final class C0105x {

    /* renamed from: a */
    private final e1 f189a;

    public C0105x(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f189a = e1Var;
    }

    /* renamed from: a */
    public final void m1078a() {
        e1 e1Var = this.f189a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("restore_purchase");
        b.m897k("soft_paywall");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: b */
    public final void m1077b() {
        e1 e1Var = this.f189a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("not_now");
        b.m897k("soft_paywall");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: c */
    public final void m1076c(boolean z) {
        e1 e1Var = this.f189a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("soft_paywall");
        b.m895m(z ? "trial" : "subscribe");
        e1Var.c("view_screen", b.m907a());
    }
}
