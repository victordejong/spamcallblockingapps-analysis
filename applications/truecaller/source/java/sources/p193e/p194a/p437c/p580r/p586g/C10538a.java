package p193e.p194a.p437c.p580r.p586g;

import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0013\u001a\u0004\b\u000e\u0010\u0004¨\u0006\u0015"}, d2 = {"Le/a/c/r/g/a;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "Le/a/c/r/g/c;", C22021b.f61237c, "Ljava/util/List;", "a", "()Ljava/util/List;", "configuration", "Ljava/lang/String;", "countryCode", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.g.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/g/a.class */
public final class C10538a {
    @b("countryCode")

    /* renamed from: a */
    private final String f31458a;
    @b("configuration")

    /* renamed from: b */
    private final List<C10540c> f31459b;

    /* renamed from: a */
    public final List<C10540c> m25797a() {
        return this.f31459b;
    }

    /* renamed from: b */
    public final String m25796b() {
        return this.f31458a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10538a)) {
                return false;
            }
            C10538a c10538a = (C10538a) obj;
            return l.a(this.f31458a, c10538a.f31458a) && l.a(this.f31459b, c10538a.f31459b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31458a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<C10540c> list = this.f31459b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CountryLevelConfiguration(countryCode=");
        m8728C.append(this.f31458a);
        m8728C.append(", configuration=");
        return C22128a.m8602l(m8728C, this.f31459b, ")");
    }
}
