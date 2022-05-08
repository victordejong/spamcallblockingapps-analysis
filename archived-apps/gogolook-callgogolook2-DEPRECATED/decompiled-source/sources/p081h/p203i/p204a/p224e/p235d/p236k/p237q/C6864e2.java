package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6809d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
/* renamed from: h.i.a.e.d.k.q.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e2.class */
public final class C6864e2<O extends C6805a.AbstractC6809d> {

    /* renamed from: a */
    public final boolean f16826a;

    /* renamed from: b */
    public final int f16827b;

    /* renamed from: c */
    public final C6805a<O> f16828c;

    /* renamed from: d */
    public final O f16829d;

    public C6864e2(C6805a<O> aVar) {
        this.f16826a = true;
        this.f16828c = aVar;
        this.f16829d = null;
        this.f16827b = System.identityHashCode(this);
    }

    public C6864e2(C6805a<O> aVar, O o) {
        this.f16826a = false;
        this.f16828c = aVar;
        this.f16829d = o;
        this.f16827b = C7018s.m21296a(this.f16828c, this.f16829d);
    }

    /* renamed from: a */
    public static <O extends C6805a.AbstractC6809d> C6864e2<O> m21692a(C6805a<O> aVar) {
        return new C6864e2<>(aVar);
    }

    /* renamed from: a */
    public static <O extends C6805a.AbstractC6809d> C6864e2<O> m21691a(C6805a<O> aVar, O o) {
        return new C6864e2<>(aVar, o);
    }

    /* renamed from: a */
    public final String m21693a() {
        return this.f16828c.m21865b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6864e2)) {
            return false;
        }
        C6864e2 e2Var = (C6864e2) obj;
        return !this.f16826a && !e2Var.f16826a && C7018s.m21297a(this.f16828c, e2Var.f16828c) && C7018s.m21297a(this.f16829d, e2Var.f16829d);
    }

    public final int hashCode() {
        return this.f16827b;
    }
}
