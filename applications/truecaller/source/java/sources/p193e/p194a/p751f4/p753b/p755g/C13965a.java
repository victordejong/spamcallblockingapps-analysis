package p193e.p194a.p751f4.p753b.p755g;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\nR@\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u0002\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\f\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Le/a/f4/b/g/a;", "", "", "toString", "()Ljava/lang/String;", "", C22021b.f61237c, "I", "()I", "setTimeToLive", "(I)V", "timeToLive", "", "Le/a/f4/b/g/a$a;", "a", "Ljava/util/Map;", "()Ljava/util/Map;", AbstractC2405c.f7629a, "(Ljava/util/Map;)V", RemoteMessageConst.DATA, "<init>", "()V", "network-advanced_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f4.b.g.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/g/a.class */
public final class C13965a {
    @b(RemoteMessageConst.DATA)

    /* renamed from: a */
    private Map<String, Map<String, C13966a>> f40386a;
    @b(RemoteMessageConst.TTL)

    /* renamed from: b */
    private int f40387b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u000b\u0018��2\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\f\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"e/a/f4/b/g/a$a", "", "", "toString", "()Ljava/lang/String;", "", "a", "Ljava/util/List;", "()Ljava/util/List;", C22021b.f61237c, "(Ljava/util/List;)V", "edges", "<init>", "()V", "host", "(Ljava/lang/String;)V", "network-advanced_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.f4.b.g.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/b/g/a$a.class */
    public static final class C13966a {
        @b("edges")

        /* renamed from: a */
        private List<String> f40388a;

        public C13966a() {
        }

        public C13966a(String str) {
            l.e(str, "host");
            this.f40388a = i.d0(new String[]{str});
        }

        /* renamed from: a */
        public final List<String> m20932a() {
            return this.f40388a;
        }

        /* renamed from: b */
        public final void m20931b(List<String> list) {
            this.f40388a = list;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Endpoint(edges=");
            m8728C.append(this.f40388a);
            m8728C.append(')');
            return m8728C.toString();
        }
    }

    /* renamed from: a */
    public final Map<String, Map<String, C13966a>> m20935a() {
        return this.f40386a;
    }

    /* renamed from: b */
    public final int m20934b() {
        return this.f40387b;
    }

    /* renamed from: c */
    public final void m20933c(Map<String, Map<String, C13966a>> map) {
        this.f40386a = map;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EdgeDto(data=");
        m8728C.append(this.f40386a);
        m8728C.append(", timeToLive=");
        return C22128a.m8701I2(m8728C, this.f40387b, ')');
    }
}
