package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0153f;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/a.class */
public final class C0078a {

    /* renamed from: a */
    private final e1 f142a;

    public C0078a(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f142a = e1Var;
    }

    /* renamed from: a */
    public final void m1166a() {
        e1 e1Var = this.f142a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("restore");
        b.m897k("premium_tab_upsell");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: b */
    public final void m1165b() {
        C0153f.m930c(this.f142a, "premium_tab_upsell", null, 2, null);
    }

    /* renamed from: c */
    public final void m1164c() {
        e1 e1Var = this.f142a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("upgrade");
        b.m897k("premium_tab_upsell");
        e1Var.c("user_action", b.m907a());
    }
}
