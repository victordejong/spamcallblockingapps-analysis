package androidx.core.p036f;
/* renamed from: androidx.core.f.d */
/* loaded from: classes-dex2jar.jar:androidx/core/f/d.class */
public final class C0682d<F, S> {

    /* renamed from: a */
    public final F f3006a;

    /* renamed from: b */
    public final S f3007b;

    public C0682d(F f, S s) {
        this.f3006a = f;
        this.f3007b = s;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0682d)) {
            return false;
        }
        C0682d dVar = (C0682d) obj;
        return C0681c.m8554a(dVar.f3006a, this.f3006a) && C0681c.m8554a(dVar.f3007b, this.f3007b);
    }

    public final int hashCode() {
        F f = this.f3006a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f3007b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "Pair{" + String.valueOf(this.f3006a) + " " + String.valueOf(this.f3007b) + "}";
    }
}
