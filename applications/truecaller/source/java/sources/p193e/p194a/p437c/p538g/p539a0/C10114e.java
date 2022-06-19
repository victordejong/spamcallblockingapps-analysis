package p193e.p194a.p437c.p538g.p539a0;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/truecaller/insights/categorizer/model/ClassificationResult;", "", "className", "", "classIdentifier", "", "classProbability", "", "(Ljava/lang/String;ID)V", "getClassIdentifier", "()I", "getClassName", "()Ljava/lang/String;", "getClassProbability", "()D", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.a0.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/a0/e.class */
public final class C10114e {

    /* renamed from: a */
    public final String f30026a;

    /* renamed from: b */
    public final int f30027b;

    /* renamed from: c */
    public final double f30028c;

    public C10114e(String str, int i, double d) {
        l.e(str, "className");
        this.f30026a = str;
        this.f30027b = i;
        this.f30028c = d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10114e)) {
            return false;
        }
        C10114e c10114e = (C10114e) obj;
        return l.a(this.f30026a, c10114e.f30026a) && this.f30027b == c10114e.f30027b && l.a(Double.valueOf(this.f30028c), Double.valueOf(c10114e.f30028c));
    }

    public int hashCode() {
        return (((this.f30026a.hashCode() * 31) + this.f30027b) * 31) + Double.doubleToLongBits(this.f30028c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClassificationResult(className=");
        m8728C.append(this.f30026a);
        m8728C.append(", classIdentifier=");
        m8728C.append(this.f30027b);
        m8728C.append(", classProbability=");
        m8728C.append(this.f30028c);
        m8728C.append(')');
        return m8728C.toString();
    }
}
