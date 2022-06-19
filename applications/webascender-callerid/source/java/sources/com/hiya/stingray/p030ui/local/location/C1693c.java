package com.hiya.stingray.p030ui.local.location;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.h1.i;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/c.class */
public final class C1693c {

    /* renamed from: a */
    private final e1 f4745a;

    public C1693c(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4745a = e1Var;
    }

    /* renamed from: a */
    public final void m1330a() {
        e1 e1Var = this.f4745a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m897k("change_location");
        m906b.m900h("update_gps");
        e1Var.c("user_action", m906b.m907a());
    }

    /* renamed from: b */
    public final void m1329b(i.a aVar) {
        String str;
        k.g(aVar, "placeSource");
        e1 e1Var = this.f4745a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("set_location");
        int i = C1692b.f4744a[aVar.ordinal()];
        if (i == 1) {
            str = "current_location";
        } else if (i == 2) {
            str = "map_location";
        } else if (i == 3) {
            str = "search_result";
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        } else {
            str = "history";
        }
        m906b.m894n(str);
        e1Var.c("apply_setting", m906b.m907a());
    }

    /* renamed from: c */
    public final void m1328c() {
        e1 e1Var = this.f4745a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m900h("change_location");
        e1Var.c("view_screen", m906b.m907a());
    }
}
