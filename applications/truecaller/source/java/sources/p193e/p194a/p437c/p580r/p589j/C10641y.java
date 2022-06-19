package p193e.p194a.p437c.p580r.p589j;

import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f¨\u0006\u0013"}, d2 = {"Le/a/c/r/j/y;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "a", "Ljava/util/List;", "()Ljava/util/List;", "baseFilterNames", "<init>", "(Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.j.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/y.class */
public final class C10641y {
    @b("baseFilterNames")

    /* renamed from: a */
    private final List<String> f31697a;

    public C10641y(List<String> list) {
        l.e(list, "baseFilterNames");
        this.f31697a = list;
    }

    /* renamed from: a */
    public final List<String> m25755a() {
        return this.f31697a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C10641y) && l.a(this.f31697a, ((C10641y) obj).f31697a);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f31697a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("SemiCardAllowedBaseFilters(baseFilterNames="), this.f31697a, ")");
    }
}
