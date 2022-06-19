package p193e.p194a.p437c.p538g.p539a0;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/truecaller/insights/categorizer/model/TrainingData;", "", "message", "", "category", "Lcom/truecaller/insights/categorizer/model/Category;", "(Ljava/lang/String;Lcom/truecaller/insights/categorizer/model/Category;)V", "getCategory", "()Lcom/truecaller/insights/categorizer/model/Category;", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.a0.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/a0/k.class */
public final class C10120k {

    /* renamed from: a */
    public final String f30054a;

    /* renamed from: b */
    public final AbstractC10109b f30055b;

    public C10120k(String str, AbstractC10109b abstractC10109b) {
        l.e(str, "message");
        l.e(abstractC10109b, "category");
        this.f30054a = str;
        this.f30055b = abstractC10109b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10120k)) {
            return false;
        }
        C10120k c10120k = (C10120k) obj;
        return l.a(this.f30054a, c10120k.f30054a) && l.a(this.f30055b, c10120k.f30055b);
    }

    public int hashCode() {
        return this.f30055b.hashCode() + (this.f30054a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TrainingData(message=");
        m8728C.append(this.f30054a);
        m8728C.append(", category=");
        m8728C.append(this.f30055b);
        m8728C.append(')');
        return m8728C.toString();
    }
}
