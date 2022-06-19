package androidx.lifecycle;

import androidx.lifecycle.AbstractC0329h;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/o$a.class */
class o$a {

    /* renamed from: a */
    AbstractC0329h.EnumC0332c f1714a;

    /* renamed from: b */
    l f1715b;

    o$a(AbstractC0339m abstractC0339m, AbstractC0329h.EnumC0332c enumC0332c) {
        this.f1715b = C0341r.m5424f(abstractC0339m);
        this.f1714a = enumC0332c;
    }

    /* renamed from: a */
    void m5430a(AbstractC0340n abstractC0340n, AbstractC0329h.EnumC0331b enumC0331b) {
        AbstractC0329h.EnumC0332c targetState = enumC0331b.getTargetState();
        this.f1714a = o.k(this.f1714a, targetState);
        this.f1715b.c(abstractC0340n, enumC0331b);
        this.f1714a = targetState;
    }
}
