package p573f;

import p573f.p590w.p592c.C10057o;
/* renamed from: f.k */
/* loaded from: classes2-dex2jar.jar:f/k.class */
public final class C9937k implements Comparable<C9937k> {

    /* renamed from: a */
    public final long f37130a;

    /* renamed from: f.k$a */
    /* loaded from: classes2-dex2jar.jar:f/k$a.class */
    public static final class C9938a {
        public C9938a() {
        }

        public /* synthetic */ C9938a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9938a(null);
    }

    public /* synthetic */ C9937k(long j) {
        this.f37130a = j;
    }

    /* renamed from: a */
    public static boolean m1758a(long j, Object obj) {
        if (!(obj instanceof C9937k)) {
            return false;
        }
        return (j > ((C9937k) obj).m1760a() ? 1 : (j == ((C9937k) obj).m1760a() ? 0 : -1)) == 0;
    }

    /* renamed from: b */
    public static final /* synthetic */ C9937k m1757b(long j) {
        return new C9937k(j);
    }

    /* renamed from: c */
    public static long m1756c(long j) {
        return j;
    }

    /* renamed from: d */
    public static int m1755d(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: e */
    public static String m1754e(long j) {
        return C9947q.m1744a(j);
    }

    /* renamed from: a */
    public final int m1759a(long j) {
        throw null;
    }

    /* renamed from: a */
    public final /* synthetic */ long m1760a() {
        return this.f37130a;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(C9937k kVar) {
        m1759a(kVar.m1760a());
        throw null;
    }

    public boolean equals(Object obj) {
        return m1758a(this.f37130a, obj);
    }

    public int hashCode() {
        return m1755d(this.f37130a);
    }

    public String toString() {
        return m1754e(this.f37130a);
    }
}
