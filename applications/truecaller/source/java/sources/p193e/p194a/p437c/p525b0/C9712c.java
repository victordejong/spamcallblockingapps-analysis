package p193e.p194a.p437c.p525b0;

import com.truecaller.insights.models.pdo.ClassifierType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.b0.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/b0/c.class */
public final class C9712c {

    /* renamed from: a */
    public final String f29345a;

    /* renamed from: b */
    public final ClassifierType f29346b;

    public C9712c(String str, ClassifierType classifierType) {
        l.e(str, "updateCategory");
        l.e(classifierType, "classifierType");
        this.f29345a = str;
        this.f29346b = classifierType;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9712c)) {
                return false;
            }
            C9712c c9712c = (C9712c) obj;
            return l.a(this.f29345a, c9712c.f29345a) && l.a(this.f29346b, c9712c.f29346b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f29345a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        ClassifierType classifierType = this.f29346b;
        if (classifierType != null) {
            i = classifierType.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdateProcessorMeta(updateCategory=");
        m8728C.append(this.f29345a);
        m8728C.append(", classifierType=");
        m8728C.append(this.f29346b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
