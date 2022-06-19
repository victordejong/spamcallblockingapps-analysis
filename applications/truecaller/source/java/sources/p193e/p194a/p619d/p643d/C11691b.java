package p193e.p194a.p619d.p643d;

import android.content.ContentResolver;
import e.a.h.f.n0.a;
import e.a.h.f.n0.b;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.p643d.p644a.AbstractC11682s;
import p193e.p194a.p619d.p643d.p644a.C11686w;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.AbstractC11646b;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.C11647c;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11648a;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.C11650c;
import p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a;
import p193e.p194a.p619d.p643d.p644a.p645a.p648c.C11653b;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11655a;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11660d;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.C11656b;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.C11662f;
import p193e.p194a.p619d.p643d.p650c.C11696c;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import s1.w.f;
/* renamed from: e.a.d.d.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/b.class */
public final class C11691b {

    /* renamed from: a */
    public final AbstractC15539j2 f34294a;

    /* renamed from: b */
    public final C11691b f34295b = this;

    /* renamed from: c */
    public Provider<C11647c> f34296c;

    /* renamed from: d */
    public Provider<AbstractC11646b> f34297d;

    /* renamed from: e */
    public Provider<C11662f> f34298e;

    /* renamed from: f */
    public Provider<AbstractC11660d> f34299f;

    /* renamed from: g */
    public Provider<C11653b> f34300g;

    /* renamed from: h */
    public Provider<AbstractC11652a> f34301h;

    /* renamed from: i */
    public Provider<C11656b> f34302i;

    /* renamed from: j */
    public Provider<AbstractC11655a> f34303j;

    /* renamed from: k */
    public Provider<C11650c> f34304k;

    /* renamed from: l */
    public Provider<AbstractC11648a> f34305l;

    /* renamed from: m */
    public Provider<AbstractC17405c> f34306m;

    /* renamed from: n */
    public Provider<AbstractC17405c> f34307n;

    /* renamed from: o */
    public Provider<C11686w> f34308o;

    /* renamed from: p */
    public Provider<AbstractC11682s> f34309p;

    /* renamed from: e.a.d.d.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/b$b.class */
    public static final class C11693b<T> implements Provider<T> {

        /* renamed from: a */
        public final C11691b f34310a;

        /* renamed from: b */
        public final int f34311b;

        public C11693b(C11691b c11691b, int i) {
            this.f34310a = c11691b;
            this.f34311b = i;
        }

        public T get() {
            switch (this.f34311b) {
                case 0:
                    C11691b c11691b = this.f34310a;
                    f mo12378g = c11691b.f34294a.mo12378g();
                    Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                    f mo12315k6 = c11691b.f34294a.mo12315k6();
                    Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                    f mo12315k62 = c11691b.f34294a.mo12315k6();
                    Objects.requireNonNull(mo12315k62, "Cannot return null from a non-@Nullable component method");
                    f mo12765D2 = c11691b.f34294a.mo12765D2();
                    Objects.requireNonNull(mo12765D2, "Cannot return null from a non-@Nullable component method");
                    AbstractC11705f mo11631z = c11691b.f34294a.mo11631z();
                    Objects.requireNonNull(mo11631z, "Cannot return null from a non-@Nullable component method");
                    ContentResolver mo11652Z = c11691b.f34294a.mo11652Z();
                    Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                    a aVar = new a(mo11652Z);
                    f mo12606P = c11691b.f34294a.mo12606P();
                    Objects.requireNonNull(mo12606P, "Cannot return null from a non-@Nullable component method");
                    b bVar = new b(aVar, mo12606P);
                    AbstractC14630d mo12276n5 = c11691b.f34294a.mo12276n5();
                    Objects.requireNonNull(mo12276n5, "Cannot return null from a non-@Nullable component method");
                    C11696c c11696c = new C11696c(mo12315k62, mo12765D2, mo11631z, bVar, mo12276n5);
                    AbstractC11646b abstractC11646b = (AbstractC11646b) c11691b.f34297d.get();
                    AbstractC11660d abstractC11660d = (AbstractC11660d) c11691b.f34299f.get();
                    AbstractC11652a abstractC11652a = (AbstractC11652a) c11691b.f34301h.get();
                    AbstractC11655a abstractC11655a = (AbstractC11655a) c11691b.f34303j.get();
                    AbstractC11648a abstractC11648a = (AbstractC11648a) c11691b.f34305l.get();
                    AbstractC19462a mo12776C4 = c11691b.f34294a.mo12776C4();
                    Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                    AbstractC19854f<AbstractC19463a0> mo12217s = c11691b.f34294a.mo12217s();
                    Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
                    AbstractC19223c0 mo12349i = c11691b.f34294a.mo12349i();
                    Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                    AbstractC17405c abstractC17405c = (AbstractC17405c) c11691b.f34307n.get();
                    AbstractC11705f mo11631z2 = c11691b.f34294a.mo11631z();
                    Objects.requireNonNull(mo11631z2, "Cannot return null from a non-@Nullable component method");
                    C20592g mo11648b = c11691b.f34294a.mo11648b();
                    Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                    return (T) new C11686w(mo12378g, mo12315k6, c11696c, abstractC11646b, abstractC11660d, abstractC11652a, abstractC11655a, abstractC11648a, mo12776C4, mo12217s, mo12349i, abstractC17405c, mo11631z2, mo11648b);
                case 1:
                    AbstractC19223c0 mo12349i2 = this.f34310a.f34294a.mo12349i();
                    Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                    return (T) new C11647c(mo12349i2);
                case 2:
                    return (T) new C11662f();
                case 3:
                    return (T) new C11653b();
                case 4:
                    AbstractC19223c0 mo12349i3 = this.f34310a.f34294a.mo12349i();
                    Objects.requireNonNull(mo12349i3, "Cannot return null from a non-@Nullable component method");
                    return (T) new C11656b(mo12349i3);
                case 5:
                    return (T) new C11650c();
                case 6:
                    T t = (T) this.f34310a.f34294a.mo12602P3();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                    return t;
                default:
                    throw new AssertionError(this.f34311b);
            }
        }
    }

    public C11691b(AbstractC15539j2 abstractC15539j2, C11692a c11692a) {
        this.f34294a = abstractC15539j2;
        C11693b c11693b = new C11693b(this, 1);
        this.f34296c = c11693b;
        this.f34297d = o3.c.b.b(c11693b);
        C11693b c11693b2 = new C11693b(this, 2);
        this.f34298e = c11693b2;
        this.f34299f = o3.c.b.b(c11693b2);
        C11693b c11693b3 = new C11693b(this, 3);
        this.f34300g = c11693b3;
        this.f34301h = o3.c.b.b(c11693b3);
        C11693b c11693b4 = new C11693b(this, 4);
        this.f34302i = c11693b4;
        this.f34303j = o3.c.b.b(c11693b4);
        C11693b c11693b5 = new C11693b(this, 5);
        this.f34304k = c11693b5;
        this.f34305l = o3.c.b.b(c11693b5);
        C11693b c11693b6 = new C11693b(this, 6);
        this.f34306m = c11693b6;
        this.f34307n = o3.c.b.b(c11693b6);
        C11693b c11693b7 = new C11693b(this, 0);
        this.f34308o = c11693b7;
        this.f34309p = o3.c.b.b(c11693b7);
    }
}
