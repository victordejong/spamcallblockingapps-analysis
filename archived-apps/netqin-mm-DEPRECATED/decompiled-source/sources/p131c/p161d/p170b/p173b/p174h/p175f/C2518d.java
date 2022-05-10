package p131c.p161d.p170b.p173b.p174h.p175f;

import java.util.List;
/* renamed from: c.d.b.b.h.f.d */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/d.class */
public final class C2518d extends AbstractC2532j {

    /* renamed from: a */
    public final List<AbstractC2535l> f9532a;

    public C2518d(List<AbstractC2535l> list) {
        if (list != null) {
            this.f9532a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2532j
    /* renamed from: a */
    public List<AbstractC2535l> mo29604a() {
        return this.f9532a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2532j) {
            return this.f9532a.equals(((AbstractC2532j) obj).mo29604a());
        }
        return false;
    }

    public int hashCode() {
        return this.f9532a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f9532a + "}";
    }
}
