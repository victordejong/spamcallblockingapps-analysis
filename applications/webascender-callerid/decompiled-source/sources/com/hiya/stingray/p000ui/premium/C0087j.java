package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.C0153f;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/j.class */
public final class C0087j {

    /* renamed from: a */
    private final e1 f165a;

    public C0087j(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f165a = e1Var;
    }

    /* renamed from: a */
    public final void m1140a(boolean z) {
        e1 e1Var = this.f165a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("auto_block_scam");
        b.m894n(z ? "on" : "off");
        b.m897k("premium_tab");
        e1Var.c("apply_setting", b.m907a());
    }

    /* renamed from: b */
    public final void m1139b(boolean z) {
        e1 e1Var = this.f165a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("auto_block_nuisance");
        b.m894n(z ? "on" : "off");
        b.m897k("premium_tab");
        e1Var.c("apply_setting", b.m907a());
    }

    /* renamed from: c */
    public final void m1138c() {
        C0153f.m930c(this.f165a, "premium_tab", null, 2, null);
    }
}
