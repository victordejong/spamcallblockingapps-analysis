package com.hiya.stingray.p000ui.p001v;

import com.hiya.stingray.manager.d1;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.r3;
import com.hiya.stingray.s.t0;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.v.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/v/b.class */
public final class C0074b {

    /* renamed from: a */
    private final e1 f159a;

    /* renamed from: b */
    private final r3 f160b;

    public C0074b(e1 e1Var, r3 r3Var) {
        k.g(e1Var, "analyticsManager");
        k.g(r3Var, "premiumManager");
        this.f159a = e1Var;
        this.f160b = r3Var;
    }

    /* renamed from: a */
    public final void m1090a(t0 t0Var) {
        k.g(t0Var, "lookupHistoryEntry");
        e1 e1Var = this.f159a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m975l("recent_lookup");
        b.m974m(d1.a.b(t0Var, Boolean.valueOf(this.f160b.P())));
        e1Var.c("make_call", b.m986a());
    }

    /* renamed from: b */
    public final void m1089b() {
        e1 e1Var = this.f159a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m975l("lookup");
        b.m974m("reverse_phone");
        b.m976k("lookup");
        e1Var.c("search", b.m986a());
    }
}
