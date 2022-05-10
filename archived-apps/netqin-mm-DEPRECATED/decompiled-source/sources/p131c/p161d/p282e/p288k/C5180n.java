package p131c.p161d.p282e.p288k;
/* renamed from: c.d.e.k.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/n.class */
public final class C5180n {

    /* renamed from: a */
    public final Class<?> f17829a;

    /* renamed from: b */
    public final int f17830b;

    /* renamed from: c */
    public final int f17831c;

    public C5180n(Class<?> cls, int i, int i2) {
        C5184r.m24333a(cls, "Null dependency anInterface.");
        this.f17829a = cls;
        this.f17830b = i;
        this.f17831c = i2;
    }

    /* renamed from: a */
    public static C5180n m24347a(Class<?> cls) {
        return new C5180n(cls, 0, 0);
    }

    /* renamed from: b */
    public static C5180n m24345b(Class<?> cls) {
        return new C5180n(cls, 0, 1);
    }

    /* renamed from: c */
    public static C5180n m24343c(Class<?> cls) {
        return new C5180n(cls, 1, 0);
    }

    /* renamed from: d */
    public static C5180n m24341d(Class<?> cls) {
        return new C5180n(cls, 1, 1);
    }

    /* renamed from: e */
    public static C5180n m24340e(Class<?> cls) {
        return new C5180n(cls, 2, 0);
    }

    /* renamed from: a */
    public Class<?> m24348a() {
        return this.f17829a;
    }

    /* renamed from: b */
    public boolean m24346b() {
        return this.f17831c == 0;
    }

    /* renamed from: c */
    public boolean m24344c() {
        boolean z = true;
        if (this.f17830b != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m24342d() {
        return this.f17830b == 2;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5180n) {
            C5180n nVar = (C5180n) obj;
            z = false;
            if (this.f17829a == nVar.f17829a) {
                z = false;
                if (this.f17830b == nVar.f17830b) {
                    z = false;
                    if (this.f17831c == nVar.f17831c) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f17829a.hashCode() ^ 1000003) * 1000003) ^ this.f17830b) * 1000003) ^ this.f17831c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f17829a);
        sb.append(", type=");
        int i = this.f17830b;
        boolean z = true;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", direct=");
        if (this.f17831c != 0) {
            z = false;
        }
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
