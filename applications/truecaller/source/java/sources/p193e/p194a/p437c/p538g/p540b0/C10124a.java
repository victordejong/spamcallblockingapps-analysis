package p193e.p194a.p437c.p538g.p540b0;

import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B!\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\f\u001a\u00020��2\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/truecaller/insights/categorizer/multiClass/AllKeyWordsAndClassProbs;", "", "keyWordProbs", "", "Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;", "classProbs", "(Ljava/util/List;Ljava/util/List;)V", "getClassProbs", "()Ljava/util/List;", "getKeyWordProbs", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.b0.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/b0/a.class */
public final class C10124a {

    /* renamed from: a */
    public final List<C10125b> f30063a;

    /* renamed from: b */
    public final List<C10125b> f30064b;

    public C10124a(List<C10125b> list, List<C10125b> list2) {
        l.e(list, "keyWordProbs");
        l.e(list2, "classProbs");
        this.f30063a = list;
        this.f30064b = list2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10124a)) {
            return false;
        }
        C10124a c10124a = (C10124a) obj;
        return l.a(this.f30063a, c10124a.f30063a) && l.a(this.f30064b, c10124a.f30064b);
    }

    public int hashCode() {
        return this.f30064b.hashCode() + (this.f30063a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AllKeyWordsAndClassProbs(keyWordProbs=");
        m8728C.append(this.f30063a);
        m8728C.append(", classProbs=");
        m8728C.append(this.f30064b);
        m8728C.append(')');
        return m8728C.toString();
    }
}
