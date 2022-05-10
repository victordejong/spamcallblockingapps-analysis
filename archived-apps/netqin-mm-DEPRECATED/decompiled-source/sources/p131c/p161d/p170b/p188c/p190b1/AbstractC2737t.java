package p131c.p161d.p170b.p188c.p190b1;

import android.os.Handler;
import java.io.IOException;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
/* renamed from: c.d.b.c.b1.t */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/t.class */
public interface AbstractC2737t {

    /* renamed from: c.d.b.c.b1.t$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/t$a.class */
    public static final class C2738a {

        /* renamed from: a */
        public final Object f9929a;

        /* renamed from: b */
        public final int f9930b;

        /* renamed from: c */
        public final int f9931c;

        /* renamed from: d */
        public final long f9932d;

        /* renamed from: e */
        public final int f9933e;

        public C2738a(Object obj) {
            this(obj, -1L);
        }

        public C2738a(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        public C2738a(Object obj, int i, int i2, long j, int i3) {
            this.f9929a = obj;
            this.f9930b = i;
            this.f9931c = i2;
            this.f9932d = j;
            this.f9933e = i3;
        }

        public C2738a(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public C2738a(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        /* renamed from: a */
        public boolean m29245a() {
            return this.f9930b != -1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2738a.class != obj.getClass()) {
                return false;
            }
            C2738a aVar = (C2738a) obj;
            if (!(this.f9929a.equals(aVar.f9929a) && this.f9930b == aVar.f9930b && this.f9931c == aVar.f9931c && this.f9932d == aVar.f9932d && this.f9933e == aVar.f9933e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((527 + this.f9929a.hashCode()) * 31) + this.f9930b) * 31) + this.f9931c) * 31) + ((int) this.f9932d)) * 31) + this.f9933e;
        }
    }

    /* renamed from: c.d.b.c.b1.t$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/t$b.class */
    public interface AbstractC2739b {
        /* renamed from: a */
        void mo27399a(AbstractC2737t tVar, AbstractC2965r0 r0Var);
    }

    /* renamed from: a */
    AbstractC2735s mo29150a(C2738a aVar, AbstractC2821e eVar, long j);

    /* renamed from: a */
    void mo29251a(Handler handler, AbstractC2740u uVar);

    /* renamed from: a */
    void mo29151a(AbstractC2735s sVar);

    /* renamed from: a */
    void mo29250a(AbstractC2739b bVar);

    /* renamed from: a */
    void mo29249a(AbstractC2739b bVar, AbstractC2841t tVar);

    /* renamed from: a */
    void mo29248a(AbstractC2740u uVar);

    /* renamed from: b */
    void mo29148b() throws IOException;

    /* renamed from: b */
    void mo29247b(AbstractC2739b bVar);

    /* renamed from: c */
    void mo29246c(AbstractC2739b bVar);
}
