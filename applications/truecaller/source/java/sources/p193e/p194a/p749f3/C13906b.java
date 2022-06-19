package p193e.p194a.p749f3;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.f3.b */
/* loaded from: classes6-dex2jar.jar:e/a/f3/b.class */
public final class C13906b {

    /* renamed from: a */
    public final float f40299a;

    /* renamed from: b */
    public final float f40300b;

    public C13906b(float f, float f2) {
        this.f40299a = f;
        this.f40300b = f2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13906b)) {
                return false;
            }
            C13906b c13906b = (C13906b) obj;
            return Float.compare(this.f40299a, c13906b.f40299a) == 0 && Float.compare(this.f40300b, c13906b.f40300b) == 0;
        }
        return true;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f40300b) + (Float.floatToIntBits(this.f40299a) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BubblePositionInRatio(xRatio=");
        m8728C.append(this.f40299a);
        m8728C.append(", yRatio=");
        m8728C.append(this.f40300b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
