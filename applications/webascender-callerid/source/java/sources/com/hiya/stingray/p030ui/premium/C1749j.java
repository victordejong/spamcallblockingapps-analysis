package com.hiya.stingray.p030ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C1815f;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/j.class */
public final class C1749j {

    /* renamed from: a */
    private final e1 f4844a;

    public C1749j(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4844a = e1Var;
    }

    /* renamed from: a */
    public final void m1140a(boolean z) {
        e1 e1Var = this.f4844a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("auto_block_scam");
        m906b.m894n(z ? "on" : "off");
        m906b.m897k("premium_tab");
        e1Var.c("apply_setting", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1139b(boolean z) {
        e1 e1Var = this.f4844a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("auto_block_nuisance");
        m906b.m894n(z ? "on" : "off");
        m906b.m897k("premium_tab");
        e1Var.c("apply_setting", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1138c() {
        C1815f.m930c(this.f4844a, "premium_tab", null, 2, null);
    }
}
