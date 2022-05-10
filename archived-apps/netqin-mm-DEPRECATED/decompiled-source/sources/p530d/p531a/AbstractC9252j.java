package p530d.p531a;

import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.j */
/* loaded from: classes2-dex2jar.jar:d/a/j.class */
public abstract class AbstractC9252j extends AbstractC9308s0 {

    /* renamed from: d.a.j$a */
    /* loaded from: classes2-dex2jar.jar:d/a/j$a.class */
    public static abstract class AbstractC9253a {
        @Deprecated
        /* renamed from: a */
        public AbstractC9252j m3080a(C9222d dVar, C9260k0 k0Var) {
            throw new UnsupportedOperationException("Not implemented");
        }

        /* renamed from: a */
        public AbstractC9252j mo2782a(C9254b bVar, C9260k0 k0Var) {
            m3080a(bVar.m3079a(), k0Var);
            throw null;
        }
    }

    /* renamed from: d.a.j$b */
    /* loaded from: classes2-dex2jar.jar:d/a/j$b.class */
    public static final class C9254b {

        /* renamed from: a */
        public final C9210a f35808a;

        /* renamed from: b */
        public final C9222d f35809b;

        /* renamed from: d.a.j$b$a */
        /* loaded from: classes2-dex2jar.jar:d/a/j$b$a.class */
        public static final class C9255a {

            /* renamed from: a */
            public C9210a f35810a = C9210a.f35760b;

            /* renamed from: b */
            public C9222d f35811b = C9222d.f35769k;

            /* renamed from: a */
            public C9255a m3076a(C9210a aVar) {
                C4933n.m24794a(aVar, "transportAttrs cannot be null");
                this.f35810a = aVar;
                return this;
            }

            /* renamed from: a */
            public C9255a m3075a(C9222d dVar) {
                C4933n.m24794a(dVar, "callOptions cannot be null");
                this.f35811b = dVar;
                return this;
            }

            /* renamed from: a */
            public C9254b m3077a() {
                return new C9254b(this.f35810a, this.f35811b);
            }
        }

        public C9254b(C9210a aVar, C9222d dVar) {
            C4933n.m24794a(aVar, "transportAttrs");
            this.f35808a = aVar;
            C4933n.m24794a(dVar, "callOptions");
            this.f35809b = dVar;
        }

        /* renamed from: b */
        public static C9255a m3078b() {
            return new C9255a();
        }

        /* renamed from: a */
        public C9222d m3079a() {
            return this.f35809b;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("transportAttrs", this.f35808a);
            a.m24813a("callOptions", this.f35809b);
            return a.toString();
        }
    }

    /* renamed from: a */
    public void m3083a() {
    }

    /* renamed from: a */
    public void m3082a(C9260k0 k0Var) {
    }

    /* renamed from: b */
    public void m3081b() {
    }
}
