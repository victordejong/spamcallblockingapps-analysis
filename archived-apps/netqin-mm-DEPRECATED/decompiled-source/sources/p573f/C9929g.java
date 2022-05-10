package p573f;

import p573f.p590w.p592c.C10057o;
/* renamed from: f.g */
/* loaded from: classes2-dex2jar.jar:f/g.class */
public final class C9929g implements Comparable<C9929g> {

    /* renamed from: a */
    public final byte f37124a;

    /* renamed from: f.g$a */
    /* loaded from: classes2-dex2jar.jar:f/g$a.class */
    public static final class C9930a {
        public C9930a() {
        }

        public /* synthetic */ C9930a(C10057o oVar) {
            this();
        }
    }

    static {
        new C9930a(null);
    }

    public /* synthetic */ C9929g(byte b) {
        this.f37124a = b;
    }

    /* renamed from: a */
    public static boolean m1774a(byte b, Object obj) {
        if (!(obj instanceof C9929g)) {
            return false;
        }
        return b == ((C9929g) obj).m1776a();
    }

    /* renamed from: b */
    public static final /* synthetic */ C9929g m1773b(byte b) {
        return new C9929g(b);
    }

    /* renamed from: c */
    public static byte m1772c(byte b) {
        return b;
    }

    /* renamed from: d */
    public static int m1771d(byte b) {
        return b;
    }

    /* renamed from: e */
    public static String m1770e(byte b) {
        return String.valueOf(b & 255);
    }

    /* renamed from: a */
    public final /* synthetic */ byte m1776a() {
        return this.f37124a;
    }

    /* renamed from: a */
    public final int m1775a(byte b) {
        throw null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(C9929g gVar) {
        m1775a(gVar.m1776a());
        throw null;
    }

    public boolean equals(Object obj) {
        return m1774a(this.f37124a, obj);
    }

    public int hashCode() {
        byte b = this.f37124a;
        m1771d(b);
        return b;
    }

    public String toString() {
        return m1770e(this.f37124a);
    }
}
