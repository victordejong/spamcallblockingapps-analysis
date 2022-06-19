package p193e.p194a.p437c.p580r.p586g;

import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0011\u001a\u0004\b\f\u0010\u0012¨\u0006\u0014"}, d2 = {"Le/a/c/r/g/c;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", C22021b.f61237c, "updatesClass", "", "Ljava/util/List;", "()Ljava/util/List;", "allowedSenders", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/g/c.class */
public final class C10540c {
    @b("updateClass")

    /* renamed from: a */
    private final String f31462a;
    @b("allowedSenders")

    /* renamed from: b */
    private final List<String> f31463b;

    /* renamed from: a */
    public final List<String> m25794a() {
        return this.f31463b;
    }

    /* renamed from: b */
    public final String m25793b() {
        return this.f31462a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10540c)) {
                return false;
            }
            C10540c c10540c = (C10540c) obj;
            return l.a(this.f31462a, c10540c.f31462a) && l.a(this.f31463b, c10540c.f31463b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31462a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.f31463b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WhitelistingConfiguration(updatesClass=");
        m8728C.append(this.f31462a);
        m8728C.append(", allowedSenders=");
        return C22128a.m8602l(m8728C, this.f31463b, ")");
    }
}
