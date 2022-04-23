package com.hiya.stingray.p000ui.p007v;

import com.hiya.stingray.manager.d1;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.u3;
import com.hiya.stingray.t.t0;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.v.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/v/b.class */
public final class C0129b {

    /* renamed from: a */
    private final e1 f274a;

    /* renamed from: b */
    private final u3 f275b;

    public C0129b(e1 e1Var, u3 u3Var) {
        k.g(e1Var, "analyticsManager");
        k.g(u3Var, "premiumManager");
        this.f274a = e1Var;
        this.f275b = u3Var;
    }

    /* renamed from: a */
    public final void m1010a(t0 t0Var) {
        k.g(t0Var, "lookupHistoryEntry");
        e1 e1Var = this.f274a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m896l("recent_lookup");
        b.m895m(d1.a.b(t0Var, Boolean.valueOf(this.f275b.P())));
        e1Var.c("make_call", b.m907a());
    }

    /* renamed from: b */
    public final void m1009b() {
        e1 e1Var = this.f274a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m896l("lookup");
        b.m895m("reverse_phone");
        b.m897k("lookup");
        e1Var.c("search", b.m907a());
    }
}
