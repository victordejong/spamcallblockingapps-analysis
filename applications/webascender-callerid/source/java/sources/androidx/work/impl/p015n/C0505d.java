package androidx.work.impl.p015n;
/* renamed from: androidx.work.impl.n.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/d.class */
public class C0505d {

    /* renamed from: a */
    public String f2585a;

    /* renamed from: b */
    public Long f2586b;

    public C0505d(String str, long j) {
        this.f2585a = str;
        this.f2586b = Long.valueOf(j);
    }

    public C0505d(String str, boolean z) {
        this(str, (z ? 1 : null) == 1 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0505d)) {
            return false;
        }
        C0505d c0505d = (C0505d) obj;
        if (!this.f2585a.equals(c0505d.f2585a)) {
            return false;
        }
        Long l = this.f2586b;
        Long l2 = c0505d.f2586b;
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2585a.hashCode();
        Long l = this.f2586b;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}
