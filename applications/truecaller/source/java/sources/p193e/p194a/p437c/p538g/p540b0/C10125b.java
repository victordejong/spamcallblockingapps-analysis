package p193e.p194a.p437c.p538g.p540b0;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J0\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;", "", "classIdentifier", "", "probability", "", "word", "", "(ILjava/lang/Double;Ljava/lang/String;)V", "getClassIdentifier", "()I", "getProbability", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getWord", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(ILjava/lang/Double;Ljava/lang/String;)Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;", "equals", "", "other", "hashCode", "toString", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.b0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/b0/b.class */
public final class C10125b {

    /* renamed from: a */
    public final int f30065a;

    /* renamed from: b */
    public final Double f30066b;

    /* renamed from: c */
    public final String f30067c;

    public C10125b(int i, Double d, String str) {
        this.f30065a = i;
        this.f30066b = d;
        this.f30067c = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10125b)) {
            return false;
        }
        C10125b c10125b = (C10125b) obj;
        return this.f30065a == c10125b.f30065a && l.a(this.f30066b, c10125b.f30066b) && l.a(this.f30067c, c10125b.f30067c);
    }

    public int hashCode() {
        int i = this.f30065a;
        Double d = this.f30066b;
        int i2 = 0;
        int hashCode = d == null ? 0 : d.hashCode();
        String str = this.f30067c;
        if (str != null) {
            i2 = str.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ClassProbability(classIdentifier=");
        m8728C.append(this.f30065a);
        m8728C.append(", probability=");
        m8728C.append(this.f30066b);
        m8728C.append(", word=");
        m8728C.append((Object) this.f30067c);
        m8728C.append(')');
        return m8728C.toString();
    }
}
