package com.hiya.stingray.p000ui.local.dialer;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.p000ui.local.dialer.AbstractC0004e;
import com.hiya.stingray.util.p009g0.AbstractC0156c;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/b.class */
public final class C0002b {

    /* renamed from: a */
    private final e1 f12a;

    public C0002b(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f12a = e1Var;
    }

    /* renamed from: a */
    public final void m1401a(AbstractC0004e.EnumC0005a aVar) {
        k.g(aVar, "source");
        e1 e1Var = this.f12a;
        AbstractC0156c.C0157a b = AbstractC0156c.C0157a.m906b();
        String str = "dialpad";
        b.m896l("dialpad");
        int i = C0001a.f11a[aVar.ordinal()];
        if (i == 1) {
            str = "list_item";
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        b.m895m(str);
        e1Var.c("make_call", b.m907a());
    }
}
