package p193e.p194a.p437c.p438a.p442b.p443a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.a.b.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/d.class */
public final class C8703d {

    /* renamed from: a */
    public final int f26623a;

    /* renamed from: b */
    public final int f26624b;

    public C8703d(int i, int i2) {
        this.f26623a = i;
        this.f26624b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8703d)) {
                return false;
            }
            C8703d c8703d = (C8703d) obj;
            return this.f26623a == c8703d.f26623a && this.f26624b == c8703d.f26624b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f26623a * 31) + this.f26624b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FeedbackSelectorType(uiName=");
        m8728C.append(this.f26623a);
        m8728C.append(", img=");
        return C22128a.m8697J2(m8728C, this.f26624b, ")");
    }
}
