package com.hiya.stingray.p030ui.local.dialer;

import com.appsflyer.internal.referrer.Payload;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.p030ui.local.dialer.AbstractC1666e;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/b.class */
public final class C1664b {

    /* renamed from: a */
    private final e1 f4691a;

    public C1664b(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4691a = e1Var;
    }

    /* renamed from: a */
    public final void m1401a(AbstractC1666e.EnumC1667a enumC1667a) {
        String str;
        k.g(enumC1667a, Payload.SOURCE);
        e1 e1Var = this.f4691a;
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m896l("dialpad");
        int i = C1663a.f4690a[enumC1667a.ordinal()];
        if (i == 1) {
            str = "list_item";
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            str = "dialpad";
        }
        m906b.m895m(str);
        e1Var.c("make_call", m906b.m907a());
    }
}
