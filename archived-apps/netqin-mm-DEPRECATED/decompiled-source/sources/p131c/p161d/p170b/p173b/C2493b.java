package p131c.p161d.p170b.p173b;
/* renamed from: c.d.b.b.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/b.class */
public final class C2493b {

    /* renamed from: a */
    public final String f9478a;

    public C2493b(String str) {
        if (str != null) {
            this.f9478a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    /* renamed from: a */
    public static C2493b m29661a(String str) {
        return new C2493b(str);
    }

    /* renamed from: a */
    public String m29662a() {
        return this.f9478a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2493b)) {
            return false;
        }
        return this.f9478a.equals(((C2493b) obj).f9478a);
    }

    public int hashCode() {
        return this.f9478a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f9478a + "\"}";
    }
}
