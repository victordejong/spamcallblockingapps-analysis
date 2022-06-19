package androidx.work.impl.p015n;
/* renamed from: androidx.work.impl.n.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/g.class */
public class C0507g {

    /* renamed from: a */
    public final String f2587a;

    /* renamed from: b */
    public final int f2588b;

    public C0507g(String str, int i) {
        this.f2587a = str;
        this.f2588b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0507g)) {
            return false;
        }
        C0507g c0507g = (C0507g) obj;
        if (this.f2588b == c0507g.f2588b) {
            return this.f2587a.equals(c0507g.f2587a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f2587a.hashCode() * 31) + this.f2588b;
    }
}
