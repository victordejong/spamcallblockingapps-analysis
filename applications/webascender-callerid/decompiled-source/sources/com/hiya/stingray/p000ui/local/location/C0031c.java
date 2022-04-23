package com.hiya.stingray.p000ui.local.location;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.h1.i;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.location.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/c.class */
public final class C0031c {

    /* renamed from: a */
    private final e1 f66a;

    public C0031c(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f66a = e1Var;
    }

    /* renamed from: a */
    public final void m1330a() {
        e1 e1Var = this.f66a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m897k("change_location");
        b.m900h("update_gps");
        e1Var.c("user_action", b.m907a());
    }

    /* renamed from: b */
    public final void m1329b(i.a aVar) {
        String str;
        k.g(aVar, "placeSource");
        e1 e1Var = this.f66a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("set_location");
        int i = C0030b.f65a[aVar.ordinal()];
        if (i == 1) {
            str = "current_location";
        } else if (i == 2) {
            str = "map_location";
        } else if (i == 3) {
            str = "search_result";
        } else if (i == 4) {
            str = "history";
        } else {
            throw new NoWhenBranchMatchedException();
        }
        b.m894n(str);
        e1Var.c("apply_setting", b.m907a());
    }

    /* renamed from: c */
    public final void m1328c() {
        e1 e1Var = this.f66a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        b.m900h("change_location");
        e1Var.c("view_screen", b.m907a());
    }
}
