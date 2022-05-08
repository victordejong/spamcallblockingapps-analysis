package com.hiya.stingray.p000ui.premium;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.x */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/x.class */
public final class C0050x {

    /* renamed from: a */
    private final e1 f76a;

    public C0050x(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f76a = e1Var;
    }

    /* renamed from: a */
    public final void m1157a() {
        e1 e1Var = this.f76a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("restore_purchase");
        b.m976k("soft_paywall");
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: b */
    public final void m1156b() {
        e1 e1Var = this.f76a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("not_now");
        b.m976k("soft_paywall");
        e1Var.c("user_action", b.m986a());
    }

    /* renamed from: c */
    public final void m1155c(boolean z) {
        e1 e1Var = this.f76a;
        AbstractC0101c.C0102a b = AbstractC0101c.C0102a.m985b();
        b.m979h("soft_paywall");
        b.m974m(z ? "trial" : "subscribe");
        e1Var.c("view_screen", b.m986a());
    }
}
