package p131c.p161d.p170b.p173b.p174h.p175f;
/* renamed from: c.d.b.b.h.f.h */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/h.class */
public final class C2528h extends AbstractC2537m {

    /* renamed from: a */
    public final long f9565a;

    public C2528h(long j) {
        this.f9565a = j;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2537m
    /* renamed from: a */
    public long mo29565a() {
        return this.f9565a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2537m)) {
            return false;
        }
        if (this.f9565a != ((AbstractC2537m) obj).mo29565a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9565a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f9565a + "}";
    }
}
