package com.hiya.stingray.p030ui.p037v;

import com.hiya.stingray.manager.d1;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.u3;
import com.hiya.stingray.t.t0;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.v.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/v/b.class */
public final class C1791b {

    /* renamed from: a */
    private final e1 f4953a;

    /* renamed from: b */
    private final u3 f4954b;

    public C1791b(e1 e1Var, u3 u3Var) {
        k.g(e1Var, "analyticsManager");
        k.g(u3Var, "premiumManager");
        this.f4953a = e1Var;
        this.f4954b = u3Var;
    }

    /* renamed from: a */
    public final void m1010a(t0 t0Var) {
        k.g(t0Var, "lookupHistoryEntry");
        e1 e1Var = this.f4953a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m896l("recent_lookup");
        m906b.m895m(d1.a.b(t0Var, Boolean.valueOf(this.f4954b.P())));
        e1Var.c("make_call", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1009b() {
        e1 e1Var = this.f4953a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m896l("lookup");
        m906b.m895m("reverse_phone");
        m906b.m897k("lookup");
        e1Var.c("search", m906b.m907a());
    }
}
