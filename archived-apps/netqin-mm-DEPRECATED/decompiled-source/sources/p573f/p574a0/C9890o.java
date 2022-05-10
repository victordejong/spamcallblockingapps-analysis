package p573f.p574a0;

import kotlin.reflect.KVariance;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.a0.o */
/* loaded from: classes2-dex2jar.jar:f/a0/o.class */
public final class C9890o {

    /* renamed from: a */
    public final KVariance f37094a;

    /* renamed from: b */
    public final AbstractC9889n f37095b;

    /* renamed from: f.a0.o$a */
    /* loaded from: classes2-dex2jar.jar:f/a0/o$a.class */
    public static final class C9891a {
        public C9891a() {
        }

        public /* synthetic */ C9891a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9891a(null);
        new C9890o(null, null);
    }

    public C9890o(KVariance kVariance, AbstractC9889n nVar) {
        this.f37094a = kVariance;
        this.f37095b = nVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9890o)) {
            return false;
        }
        C9890o oVar = (C9890o) obj;
        return C10059q.m1643a(this.f37094a, oVar.f37094a) && C10059q.m1643a(this.f37095b, oVar.f37095b);
    }

    public int hashCode() {
        KVariance kVariance = this.f37094a;
        int i = 0;
        int hashCode = kVariance != null ? kVariance.hashCode() : 0;
        AbstractC9889n nVar = this.f37095b;
        if (nVar != null) {
            i = nVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "KTypeProjection(variance=" + this.f37094a + ", type=" + this.f37095b + ")";
    }
}
