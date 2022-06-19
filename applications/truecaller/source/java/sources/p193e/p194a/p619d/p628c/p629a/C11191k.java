package p193e.p194a.p619d.p628c.p629a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.c.a.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/k.class */
public final class C11191k extends AbstractC11198o {

    /* renamed from: a */
    public final Integer f33080a;

    public C11191k(Integer num) {
        super(null);
        this.f33080a = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C11191k) && l.a(this.f33080a, ((C11191k) obj).f33080a);
        }
        return true;
    }

    public int hashCode() {
        Integer num = this.f33080a;
        return num != null ? num.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8689L2(C22128a.m8728C("Spam(spamScore="), this.f33080a, ")");
    }
}
