package p193e.p194a.p437c.p580r.p589j;

import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u0004R\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012¨\u0006\u0014"}, d2 = {"Le/a/c/r/j/v;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "columnName", "", C22021b.f61237c, "Ljava/util/List;", "()Ljava/util/List;", "columnValues", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.j.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/v.class */
public final class C10638v {
    @b("columnName")

    /* renamed from: a */
    private final String f31691a;
    @b("columnValues")

    /* renamed from: b */
    private final List<String> f31692b;

    /* renamed from: a */
    public final String m25761a() {
        return this.f31691a;
    }

    /* renamed from: b */
    public final List<String> m25760b() {
        return this.f31692b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10638v)) {
                return false;
            }
            C10638v c10638v = (C10638v) obj;
            return l.a(this.f31691a, c10638v.f31691a) && l.a(this.f31692b, c10638v.f31692b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31691a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.f31692b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PdoColumnWithValue(columnName=");
        m8728C.append(this.f31691a);
        m8728C.append(", columnValues=");
        return C22128a.m8602l(m8728C, this.f31692b, ")");
    }
}
