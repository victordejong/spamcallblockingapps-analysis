package p193e.p194a.p437c.p538g;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/truecaller/insights/categorizer/ClassificationMeta;", "", "noOfWords", "", "confidenceScore", "", "defaultedCategorization", "", "(IDZ)V", "getConfidenceScore", "()D", "getDefaultedCategorization", "()Z", "getNoOfWords", "()I", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/c.class */
public final class C10136c {

    /* renamed from: a */
    public final int f30097a;

    /* renamed from: b */
    public final double f30098b;

    /* renamed from: c */
    public final boolean f30099c;

    public C10136c(int i, double d, boolean z) {
        this.f30097a = i;
        this.f30098b = d;
        this.f30099c = z;
    }

    public C10136c(int i, double d, boolean z, int i2) {
        z = (i2 & 4) != 0 ? false : z;
        this.f30097a = i;
        this.f30098b = d;
        this.f30099c = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10136c)) {
            return false;
        }
        C10136c c10136c = (C10136c) obj;
        return this.f30097a == c10136c.f30097a && l.a(Double.valueOf(this.f30098b), Double.valueOf(c10136c.f30098b)) && this.f30099c == c10136c.f30099c;
    }

    public int hashCode() {
        int i = this.f30097a;
        int doubleToLongBits = Double.doubleToLongBits(this.f30098b);
        boolean z = this.f30099c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((i * 31) + doubleToLongBits) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClassificationMeta(noOfWords=");
        m8728C.append(this.f30097a);
        m8728C.append(", confidenceScore=");
        m8728C.append(this.f30098b);
        m8728C.append(", defaultedCategorization=");
        return C22128a.m8598m(m8728C, this.f30099c, ')');
    }
}
