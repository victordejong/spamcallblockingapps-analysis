package p131c.p161d.p170b.p188c.p210w0;
/* renamed from: c.d.b.c.w0.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/p.class */
public final class C3053p {

    /* renamed from: c */
    public static final C3053p f10994c = new C3053p(0, 0);

    /* renamed from: a */
    public final long f10995a;

    /* renamed from: b */
    public final long f10996b;

    public C3053p(long j, long j2) {
        this.f10995a = j;
        this.f10996b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C3053p.class != obj.getClass()) {
            return false;
        }
        C3053p pVar = (C3053p) obj;
        if (!(this.f10995a == pVar.f10995a && this.f10996b == pVar.f10996b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f10995a) * 31) + ((int) this.f10996b);
    }

    public String toString() {
        return "[timeUs=" + this.f10995a + ", position=" + this.f10996b + "]";
    }
}
