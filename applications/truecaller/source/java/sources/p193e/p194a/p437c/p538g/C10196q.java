package p193e.p194a.p437c.p538g;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/truecaller/insights/categorizer/ProbabilityPair;", "", "pHam", "", "pSpam", "meta", "Lcom/truecaller/insights/categorizer/ScoringMeta;", "(DDLcom/truecaller/insights/categorizer/ScoringMeta;)V", "getMeta", "()Lcom/truecaller/insights/categorizer/ScoringMeta;", "getPHam", "()D", "getPSpam", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/q.class */
public final class C10196q {

    /* renamed from: a */
    public final double f30265a;

    /* renamed from: b */
    public final double f30266b;

    /* renamed from: c */
    public final C10197r f30267c;

    public C10196q(double d, double d2, C10197r c10197r) {
        l.e(c10197r, "meta");
        this.f30265a = d;
        this.f30266b = d2;
        this.f30267c = c10197r;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10196q)) {
            return false;
        }
        C10196q c10196q = (C10196q) obj;
        return l.a(Double.valueOf(this.f30265a), Double.valueOf(c10196q.f30265a)) && l.a(Double.valueOf(this.f30266b), Double.valueOf(c10196q.f30266b)) && l.a(this.f30267c, c10196q.f30267c);
    }

    public int hashCode() {
        return (((Double.doubleToLongBits(this.f30265a) * 31) + Double.doubleToLongBits(this.f30266b)) * 31) + this.f30267c.f30268a;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProbabilityPair(pHam=");
        m8728C.append(this.f30265a);
        m8728C.append(", pSpam=");
        m8728C.append(this.f30266b);
        m8728C.append(", meta=");
        m8728C.append(this.f30267c);
        m8728C.append(')');
        return m8728C.toString();
    }
}
