package p193e.p194a.p437c.p438a.p446c.p449f;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.a.c.f.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/f.class */
public final class C8802f {

    /* renamed from: a */
    public final boolean f26848a;

    public C8802f() {
        this.f26848a = false;
    }

    public C8802f(boolean z) {
        this.f26848a = z;
    }

    public C8802f(boolean z, int i) {
        this.f26848a = (i & 1) != 0 ? false : z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C8802f) && this.f26848a == ((C8802f) obj).f26848a;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f26848a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return z2 ? 1 : 0;
    }

    public String toString() {
        return C22128a.m8590o(C22128a.m8728C("GetUpcomingFlowInput(isInnerPage="), this.f26848a, ")");
    }
}
