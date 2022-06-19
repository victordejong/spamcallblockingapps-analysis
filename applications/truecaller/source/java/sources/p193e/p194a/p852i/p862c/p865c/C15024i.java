package p193e.p194a.p852i.p862c.p865c;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.c.c.i */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/c/i.class */
public final class C15024i<R> extends AbstractC15023h<R> {

    /* renamed from: a */
    public final R f42857a;

    /* renamed from: b */
    public final String f42858b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C15024i(Object obj, String str, int i) {
        super(null);
        String str2 = (i & 2) != 0 ? "" : null;
        l.e(obj, RemoteMessageConst.DATA);
        l.e(str2, "message");
        this.f42857a = obj;
        this.f42858b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15024i)) {
                return false;
            }
            C15024i c15024i = (C15024i) obj;
            return l.a(this.f42857a, c15024i.f42857a) && l.a(this.f42858b, c15024i.f42858b);
        }
        return true;
    }

    public int hashCode() {
        R r = this.f42857a;
        int i = 0;
        int hashCode = r != null ? r.hashCode() : 0;
        String str = this.f42858b;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Success(data=");
        m8728C.append(this.f42857a);
        m8728C.append(", message=");
        return C22128a.m8618h(m8728C, this.f42858b, ")");
    }
}
