package p193e.p194a.p619d.p628c.p629a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/l.class */
public final class C11192l extends AbstractC11198o {

    /* renamed from: a */
    public final Integer f33081a;

    public C11192l(Integer num) {
        super(null);
        this.f33081a = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C11192l) && l.a(this.f33081a, ((C11192l) obj).f33081a);
        }
        return true;
    }

    public int hashCode() {
        Integer num = this.f33081a;
        return num != null ? num.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8689L2(C22128a.m8728C("SpamPlusVerifiedBusiness(spamScore="), this.f33081a, ")");
    }
}
