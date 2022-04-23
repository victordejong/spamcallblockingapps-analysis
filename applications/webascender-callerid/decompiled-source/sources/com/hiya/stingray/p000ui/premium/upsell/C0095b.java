package com.hiya.stingray.p000ui.premium.upsell;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.k1;
import com.hiya.stingray.util.C0153f;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/b.class */
public class C0095b {

    /* renamed from: a */
    private c$b f170a = c$b.TAB;

    /* renamed from: b */
    private final e1 f171b;

    /* renamed from: c */
    private final k1 f172c;

    public C0095b(e1 e1Var, k1 k1Var) {
        k.g(e1Var, "analyticsManager");
        k.g(k1Var, "appsFlyerManager");
        this.f171b = e1Var;
        this.f172c = k1Var;
    }

    /* renamed from: a */
    public final void m1114a() {
        C0153f.m932a(this.f171b, "cancel", m1113b());
    }

    /* renamed from: b */
    public final String m1113b() {
        int i = C0094a.f169a[this.f170a.ordinal()];
        return i != 1 ? i != 2 ? "premium_interstitial" : "paywall" : "premium_tab_upsell";
    }

    /* renamed from: c */
    public final void m1112c() {
        e1 e1Var = this.f171b;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("help");
        b.m897k(m1113b());
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: d */
    public final void m1111d() {
        e1 e1Var = this.f171b;
        AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
        aVar.m900h("required_permission_deny");
        aVar.m897k(m1113b());
        e1Var.c("user_prompt_action", aVar.m907a());
    }

    /* renamed from: e */
    public final void m1110e() {
        e1 e1Var = this.f171b;
        AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
        aVar.m900h("required_permission_allow");
        aVar.m897k(m1113b());
        e1Var.c("user_prompt_action", aVar.m907a());
    }

    /* renamed from: f */
    public final void m1109f() {
        e1 e1Var = this.f171b;
        AbstractC0156c.C0157a aVar = new AbstractC0156c.C0157a();
        aVar.m895m("permission_prompt");
        aVar.m900h("required_permission");
        e1Var.c("user_prompt_view", aVar.m907a());
    }

    /* renamed from: g */
    public final void m1108g() {
        e1 e1Var = this.f171b;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("restore_purchase");
        b.m897k(m1113b());
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: h */
    public final void m1107h(boolean z) {
        C0153f.m931b(this.f171b, m1113b(), z ? "trial" : "subscribe");
        this.f171b.c("upsell_view", (AbstractC0156c) null);
        this.f172c.i(m1113b());
    }

    /* renamed from: i */
    public final void m1106i(c$b c_b) {
        k.g(c_b, "<set-?>");
        this.f170a = c_b;
    }

    /* renamed from: j */
    public final void m1105j() {
        C0153f.m932a(this.f171b, "terms_of_use", m1113b());
    }
}
