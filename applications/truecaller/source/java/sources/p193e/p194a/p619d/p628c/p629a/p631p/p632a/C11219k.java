package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.g;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.f;
/* renamed from: e.a.d.c.a.p.a.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/k.class */
public final class C11219k implements g<AbstractC11387c0<C11593e>> {

    /* renamed from: a */
    public final /* synthetic */ C11206h f33130a;

    public C11219k(C11206h c11206h) {
        this.f33130a = c11206h;
    }

    /* renamed from: a */
    public Object m25015a(Object obj, d dVar) {
        AbstractC11387c0 abstractC11387c0 = (AbstractC11387c0) obj;
        C11206h c11206h = this.f33130a;
        Objects.requireNonNull(c11206h);
        String str = "onPeersUpdate \n update " + abstractC11387c0 + " \n tiles " + c11206h.f33097d + " \n calls " + c11206h.f33098e + " \n tilesToDelete " + c11206h.f33099f;
        if (abstractC11387c0 instanceof AbstractC11387c0.C11388a) {
            Collection<? extends C11593e> collection = ((AbstractC11387c0.C11388a) abstractC11387c0).f33453a;
            p1 p1Var = c11206h.f33103j;
            if (p1Var != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            c11206h.f33103j = null;
            AbstractC11203e abstractC11203e = (AbstractC11203e) c11206h.f57683a;
            if (abstractC11203e != null) {
                abstractC11203e.mo25044s0();
            }
            Set<C11593e> q0 = i.q0(c11206h.f33097d, collection);
            if (q0.size() == 1) {
                c11206h.m25035Jj();
                c11206h.m25034Kj((C11593e) i.A(q0));
            } else if (c11206h.f33097d.size() == 1) {
                c11206h.f33100g = false;
                AbstractC11203e abstractC11203e2 = (AbstractC11203e) c11206h.f57683a;
                if (abstractC11203e2 != null) {
                    abstractC11203e2.mo25049d0(false);
                }
                AbstractC11202d abstractC11202d = c11206h.f33104k;
                if (abstractC11202d != null) {
                    abstractC11202d.mo24822Ui();
                }
                for (C11593e c11593e : q0) {
                    c11206h.m25036Ij(c11593e);
                }
            } else {
                for (C11593e c11593e2 : collection) {
                    c11206h.m25036Ij(c11593e2);
                }
            }
            String str2 = "to add: " + collection + " | current: " + c11206h.f33097d;
            c11206h.f33097d.addAll(collection);
            AbstractC11203e abstractC11203e3 = (AbstractC11203e) c11206h.f57683a;
            if (abstractC11203e3 != null) {
                abstractC11203e3.mo25050H0();
                abstractC11203e3.mo25052C();
            }
        } else if (abstractC11387c0 instanceof AbstractC11387c0.C11389b) {
            Set<T> set = ((AbstractC11387c0.C11389b) abstractC11387c0).f33454a;
            p1 p1Var2 = c11206h.f33103j;
            if (p1Var2 != null) {
                s1.a.a.a.v0.f.d.T(p1Var2, (CancellationException) null, 1, (Object) null);
            }
            c11206h.f33103j = null;
            AbstractC11203e abstractC11203e4 = (AbstractC11203e) c11206h.f57683a;
            if (abstractC11203e4 != null) {
                abstractC11203e4.mo25044s0();
            }
            Set b0 = i.b0(c11206h.f33097d, set);
            if (b0.size() == 1) {
                s1.a.a.a.v0.f.d.w2(c11206h, (f) null, (j0) null, new C11205g(c11206h, set, b0, null), 3, (Object) null);
            } else {
                for (T t : set) {
                    c11206h.f33099f.add(t);
                    s1.a.a.a.v0.f.d.w2(c11206h, (f) null, (j0) null, new C11204f(c11206h, t, null), 3, (Object) null);
                }
                c11206h.m25033Lj(set);
            }
        }
        this.f33130a.m25032Mj();
        return s.a;
    }
}
