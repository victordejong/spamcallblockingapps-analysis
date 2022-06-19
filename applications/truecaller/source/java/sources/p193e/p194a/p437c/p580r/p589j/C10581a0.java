package p193e.p194a.p437c.p580r.p589j;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\"\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0016\u001a\u0004\b\f\u0010\u0017¨\u0006\u0019"}, d2 = {"Le/a/c/r/j/a0;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", C22021b.f61237c, "Ljava/lang/String;", "a", "baseFilterName", "", "Ljava/util/List;", AbstractC2405c.f7629a, "()Ljava/util/List;", "senderIds", "Le/a/c/r/j/w;", "Le/a/c/r/j/w;", "()Le/a/c/r/j/w;", "overrideFilter", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.j.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/a0.class */
public final class C10581a0 {
    @b("senderIds")

    /* renamed from: a */
    private final List<String> f31559a;
    @b("baseFilterName")

    /* renamed from: b */
    private final String f31560b;
    @b("overrideFilter")

    /* renamed from: c */
    private final C10639w f31561c;

    /* renamed from: a */
    public final String m25779a() {
        return this.f31560b;
    }

    /* renamed from: b */
    public final C10639w m25778b() {
        return this.f31561c;
    }

    /* renamed from: c */
    public final List<String> m25777c() {
        return this.f31559a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10581a0)) {
                return false;
            }
            C10581a0 c10581a0 = (C10581a0) obj;
            return l.a(this.f31559a, c10581a0.f31559a) && l.a(this.f31560b, c10581a0.f31560b) && l.a(this.f31561c, c10581a0.f31561c);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f31559a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f31560b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        C10639w c10639w = this.f31561c;
        if (c10639w != null) {
            i = c10639w.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderIdInfo(senderIds=");
        m8728C.append(this.f31559a);
        m8728C.append(", baseFilterName=");
        m8728C.append(this.f31560b);
        m8728C.append(", overrideFilter=");
        m8728C.append(this.f31561c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
