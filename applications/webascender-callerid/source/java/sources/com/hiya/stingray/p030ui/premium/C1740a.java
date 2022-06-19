package com.hiya.stingray.p030ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C1815f;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/a.class */
public final class C1740a {

    /* renamed from: a */
    private final e1 f4821a;

    public C1740a(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4821a = e1Var;
    }

    /* renamed from: a */
    public final void m1166a() {
        e1 e1Var = this.f4821a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("restore");
        m906b.m897k("premium_tab_upsell");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1165b() {
        C1815f.m930c(this.f4821a, "premium_tab_upsell", null, 2, null);
    }

    /* renamed from: c */
    public final void m1164c() {
        e1 e1Var = this.f4821a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("upgrade");
        m906b.m897k("premium_tab_upsell");
        e1Var.c("user_action", m906b.m907a());
    }
}
