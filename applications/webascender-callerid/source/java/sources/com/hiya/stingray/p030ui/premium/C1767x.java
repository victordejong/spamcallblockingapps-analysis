package com.hiya.stingray.p030ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.x */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/x.class */
public final class C1767x {

    /* renamed from: a */
    private final e1 f4868a;

    public C1767x(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4868a = e1Var;
    }

    /* renamed from: a */
    public final void m1078a() {
        e1 e1Var = this.f4868a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("restore_purchase");
        m906b.m897k("soft_paywall");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1077b() {
        e1 e1Var = this.f4868a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("not_now");
        m906b.m897k("soft_paywall");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1076c(boolean z) {
        e1 e1Var = this.f4868a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("soft_paywall");
        m906b.m895m(z ? "trial" : "subscribe");
        e1Var.c("view_screen", m906b.m907a());
    }
}
