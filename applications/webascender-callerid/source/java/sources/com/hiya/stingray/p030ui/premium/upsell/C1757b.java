package com.hiya.stingray.p030ui.premium.upsell;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.k1;
import com.hiya.stingray.util.C1815f;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/b.class */
public class C1757b {

    /* renamed from: a */
    private c$b f4849a = c$b.TAB;

    /* renamed from: b */
    private final e1 f4850b;

    /* renamed from: c */
    private final k1 f4851c;

    public C1757b(e1 e1Var, k1 k1Var) {
        k.g(e1Var, "analyticsManager");
        k.g(k1Var, "appsFlyerManager");
        this.f4850b = e1Var;
        this.f4851c = k1Var;
    }

    /* renamed from: a */
    public final void m1114a() {
        C1815f.m932a(this.f4850b, "cancel", m1113b());
    }

    /* renamed from: b */
    public final String m1113b() {
        int i = C1756a.f4848a[this.f4849a.ordinal()];
        return i != 1 ? i != 2 ? "premium_interstitial" : "paywall" : "premium_tab_upsell";
    }

    /* renamed from: c */
    public final void m1112c() {
        e1 e1Var = this.f4850b;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("help");
        m906b.m897k(m1113b());
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: d */
    public final void m1111d() {
        e1 e1Var = this.f4850b;
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m900h("required_permission_deny");
        c1819a.m897k(m1113b());
        e1Var.c("user_prompt_action", c1819a.m907a());
    }

    /* renamed from: e */
    public final void m1110e() {
        e1 e1Var = this.f4850b;
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m900h("required_permission_allow");
        c1819a.m897k(m1113b());
        e1Var.c("user_prompt_action", c1819a.m907a());
    }

    /* renamed from: f */
    public final void m1109f() {
        e1 e1Var = this.f4850b;
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m895m("permission_prompt");
        c1819a.m900h("required_permission");
        e1Var.c("user_prompt_view", c1819a.m907a());
    }

    /* renamed from: g */
    public final void m1108g() {
        e1 e1Var = this.f4850b;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("restore_purchase");
        m906b.m897k(m1113b());
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: h */
    public final void m1107h(boolean z) {
        C1815f.m931b(this.f4850b, m1113b(), z ? "trial" : "subscribe");
        this.f4850b.c("upsell_view", (AbstractC1818c) null);
        this.f4851c.i(m1113b());
    }

    /* renamed from: i */
    public final void m1106i(c$b c_b) {
        k.g(c_b, "<set-?>");
        this.f4849a = c_b;
    }

    /* renamed from: j */
    public final void m1105j() {
        C1815f.m932a(this.f4850b, "terms_of_use", m1113b());
    }
}
