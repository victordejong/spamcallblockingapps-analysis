package p193e.p194a.p437c.p580r.p589j;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018��2\u00020\u0001B7\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\f\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f\"\u0004\b\u0010\u0010\u0011R*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R*\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0018\u0010\u0011¨\u0006\u001c"}, d2 = {"Le/a/c/r/j/w;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", C22021b.f61237c, "Ljava/util/List;", "()Ljava/util/List;", "setRequiredColumns", "(Ljava/util/List;)V", "requiredColumns", AbstractC2405c.f7629a, "a", "setOptionalColumns", "optionalColumns", "Le/a/c/r/j/v;", "setRequiredValues", "requiredValues", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.r.j.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/w.class */
public final class C10639w {
    @b("requiredValues")

    /* renamed from: a */
    private List<C10638v> f31693a;
    @b("requiredColumns")

    /* renamed from: b */
    private List<String> f31694b;
    @b("optionalColumns")

    /* renamed from: c */
    private List<String> f31695c;

    public C10639w(List<C10638v> list, List<String> list2, List<String> list3) {
        this.f31693a = list;
        this.f31694b = list2;
        this.f31695c = list3;
    }

    /* renamed from: a */
    public final List<String> m25759a() {
        return this.f31695c;
    }

    /* renamed from: b */
    public final List<String> m25758b() {
        return this.f31694b;
    }

    /* renamed from: c */
    public final List<C10638v> m25757c() {
        return this.f31693a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10639w)) {
                return false;
            }
            C10639w c10639w = (C10639w) obj;
            return l.a(this.f31693a, c10639w.f31693a) && l.a(this.f31694b, c10639w.f31694b) && l.a(this.f31695c, c10639w.f31695c);
        }
        return true;
    }

    public int hashCode() {
        List<C10638v> list = this.f31693a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f31694b;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        List<String> list3 = this.f31695c;
        if (list3 != null) {
            i = list3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PdoFilter(requiredValues=");
        m8728C.append(this.f31693a);
        m8728C.append(", requiredColumns=");
        m8728C.append(this.f31694b);
        m8728C.append(", optionalColumns=");
        return C22128a.m8602l(m8728C, this.f31695c, ")");
    }
}
