package p081h.p160h.p179e.p192b.p197f.p199e;

import com.mopub.network.ImpressionData;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.f.e.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/e/a.class */
public final class C6473a {
    @AbstractC10120c("version")

    /* renamed from: a */
    public final int f16130a;
    @AbstractC10120c("number_of_labels")

    /* renamed from: b */
    public final int f16131b;
    @AbstractC10120c(ImpressionData.COUNTRY)

    /* renamed from: c */
    public final String f16132c;
    @AbstractC10120c("threshold")

    /* renamed from: d */
    public final float f16133d;

    /* renamed from: a */
    public final int m22506a() {
        return this.f16131b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6473a)) {
            return false;
        }
        C6473a aVar = (C6473a) obj;
        if (!(this.f16130a == aVar.f16130a)) {
            return false;
        }
        return (this.f16131b == aVar.f16131b) && C15149k.m384a((Object) this.f16132c, (Object) aVar.f16132c) && Float.compare(this.f16133d, aVar.f16133d) == 0;
    }

    public int hashCode() {
        int i = this.f16130a;
        int i2 = this.f16131b;
        String str = this.f16132c;
        return (((((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0)) * 31) + Float.floatToIntBits(this.f16133d);
    }

    public String toString() {
        return "Metadata(version=" + this.f16130a + ", numberOfLabels=" + this.f16131b + ", country=" + this.f16132c + ", threshold=" + this.f16133d + ")";
    }
}
