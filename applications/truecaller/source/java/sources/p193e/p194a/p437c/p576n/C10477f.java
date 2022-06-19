package p193e.p194a.p437c.p576n;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.n.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/n/f.class */
public final class C10477f {

    /* renamed from: a */
    public final long f31163a;

    /* renamed from: b */
    public final float f31164b;

    public C10477f(long j, float f) {
        this.f31163a = j;
        this.f31164b = f;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10477f)) {
                return false;
            }
            C10477f c10477f = (C10477f) obj;
            return this.f31163a == c10477f.f31163a && Float.compare(this.f31164b, c10477f.f31164b) == 0;
        }
        return true;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f31164b) + (C4876d.m34274a(this.f31163a) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessageConfidenceScore(messageId=");
        m8728C.append(this.f31163a);
        m8728C.append(", confidenceScore=");
        m8728C.append(this.f31164b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
