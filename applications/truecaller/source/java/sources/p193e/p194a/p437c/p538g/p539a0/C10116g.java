package p193e.p194a.p437c.p538g.p539a0;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0080\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ0\u0010\u0016\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/truecaller/insights/categorizer/model/MutableClassKeywordMeta;", "", "classIdentifier", "", "probs", "", "tf", "(ILjava/lang/Double;Ljava/lang/Double;)V", "getClassIdentifier", "()I", "setClassIdentifier", "(I)V", "getProbs", "()Ljava/lang/Double;", "setProbs", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getTf", "setTf", "component1", "component2", "component3", "copy", "(ILjava/lang/Double;Ljava/lang/Double;)Lcom/truecaller/insights/categorizer/model/MutableClassKeywordMeta;", "equals", "", "other", "hashCode", "toString", "", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.a0.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/a0/g.class */
public final class C10116g {

    /* renamed from: a */
    public int f30029a;

    /* renamed from: b */
    public Double f30030b;

    /* renamed from: c */
    public Double f30031c;

    public C10116g(int i, Double d, Double d2) {
        this.f30029a = i;
        this.f30030b = d;
        this.f30031c = d2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10116g)) {
            return false;
        }
        C10116g c10116g = (C10116g) obj;
        return this.f30029a == c10116g.f30029a && l.a(this.f30030b, c10116g.f30030b) && l.a(this.f30031c, c10116g.f30031c);
    }

    public int hashCode() {
        int i = this.f30029a;
        Double d = this.f30030b;
        int i2 = 0;
        int hashCode = d == null ? 0 : d.hashCode();
        Double d2 = this.f30031c;
        if (d2 != null) {
            i2 = d2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MutableClassKeywordMeta(classIdentifier=");
        m8728C.append(this.f30029a);
        m8728C.append(", probs=");
        m8728C.append(this.f30030b);
        m8728C.append(", tf=");
        m8728C.append(this.f30031c);
        m8728C.append(')');
        return m8728C.toString();
    }
}
