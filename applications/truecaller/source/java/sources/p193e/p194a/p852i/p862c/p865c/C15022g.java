package p193e.p194a.p852i.p862c.p865c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.c.c.g */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/c/g.class */
public final class C15022g extends AbstractC15023h {

    /* renamed from: a */
    public final int f42855a;

    /* renamed from: b */
    public final String f42856b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15022g(int i, String str) {
        super(null);
        l.e(str, "message");
        this.f42855a = i;
        this.f42856b = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15022g)) {
                return false;
            }
            C15022g c15022g = (C15022g) obj;
            return this.f42855a == c15022g.f42855a && l.a(this.f42856b, c15022g.f42856b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f42855a;
        String str = this.f42856b;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Failure(errorCode=");
        m8728C.append(this.f42855a);
        m8728C.append(", message=");
        return C22128a.m8618h(m8728C, this.f42856b, ")");
    }
}
