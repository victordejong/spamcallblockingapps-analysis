package p012b.p076s.p078b.p079a.p086s0;
/* renamed from: b.s.b.a.s0.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/p.class */
public final class C1361p {

    /* renamed from: c */
    public static final C1361p f5360c = new C1361p(0, 0);

    /* renamed from: a */
    public final long f5361a;

    /* renamed from: b */
    public final long f5362b;

    public C1361p(long j, long j2) {
        this.f5361a = j;
        this.f5362b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1361p.class != obj.getClass()) {
            return false;
        }
        C1361p pVar = (C1361p) obj;
        if (!(this.f5361a == pVar.f5361a && this.f5362b == pVar.f5362b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f5361a) * 31) + ((int) this.f5362b);
    }

    public String toString() {
        long j = this.f5361a;
        long j2 = this.f5362b;
        StringBuilder sb = new StringBuilder(60);
        sb.append("[timeUs=");
        sb.append(j);
        sb.append(", position=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }
}
