package p193e.p194a.p372b0.p394b.p397g;

import com.truecaller.common.network.interceptor.useragent.UserAgentType;
import com.truecaller.common.network.util.AuthRequirement;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.l;
import u3.f0;
/* renamed from: e.a.b0.b.g.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a.class */
public abstract class AbstractC8376a implements Comparable<AbstractC8376a> {

    /* renamed from: a */
    public final byte f25744a;

    /* renamed from: b */
    public final boolean f25745b;

    /* renamed from: c */
    public final List<f0> f25746c;

    /* renamed from: e.a.b0.b.g.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$a.class */
    public static final class C8377a extends AbstractC8376a {

        /* renamed from: d */
        public final AuthRequirement f25747d;

        /* renamed from: e */
        public final String f25748e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8377a(AuthRequirement authRequirement, String str) {
            super((byte) 3, false, null, 6);
            l.e(authRequirement, "authReq");
            this.f25747d = authRequirement;
            this.f25748e = str;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8377a(AuthRequirement authRequirement, String str, int i) {
            super((byte) 3, false, null, 6);
            l.e(authRequirement, "authReq");
            this.f25747d = authRequirement;
            this.f25748e = null;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8377a)) {
                    return false;
                }
                C8377a c8377a = (C8377a) obj;
                return l.a(this.f25747d, c8377a.f25747d) && l.a(this.f25748e, c8377a.f25748e);
            }
            return true;
        }

        public int hashCode() {
            AuthRequirement authRequirement = this.f25747d;
            int i = 0;
            int hashCode = authRequirement != null ? authRequirement.hashCode() : 0;
            String str = this.f25748e;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AuthRequired(authReq=");
            m8728C.append(this.f25747d);
            m8728C.append(", installationId=");
            return C22128a.m8618h(m8728C, this.f25748e, ")");
        }
    }

    /* renamed from: e.a.b0.b.g.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$b.class */
    public static final class C8378b extends AbstractC8376a {

        /* renamed from: d */
        public final boolean f25749d;

        public C8378b(boolean z) {
            super((byte) 1, false, null, 6);
            this.f25749d = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8378b) && this.f25749d == ((C8378b) obj).f25749d;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f25749d;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("CheckCredentials(allowed="), this.f25749d, ")");
        }
    }

    /* renamed from: e.a.b0.b.g.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$c.class */
    public static final class C8379c extends AbstractC8376a {

        /* renamed from: d */
        public final UserAgentType f25750d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8379c(UserAgentType userAgentType) {
            super((byte) 7, true, null, 4);
            l.e(userAgentType, "type");
            this.f25750d = userAgentType;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8379c) && l.a(this.f25750d, ((C8379c) obj).f25750d);
            }
            return true;
        }

        public int hashCode() {
            UserAgentType userAgentType = this.f25750d;
            return userAgentType != null ? userAgentType.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CustomUserAgent(type=");
            m8728C.append(this.f25750d);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.b0.b.g.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$d.class */
    public static final class C8380d extends AbstractC8376a {

        /* renamed from: d */
        public static final C8380d f25751d = new C8380d();

        public C8380d() {
            super((byte) 6, false, i.T(new f0[]{f0.c, f0.e}), 2);
        }
    }

    /* renamed from: e.a.b0.b.g.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$e.class */
    public static final class C8381e extends AbstractC8376a {

        /* renamed from: d */
        public final boolean f25752d;

        public C8381e(boolean z) {
            super((byte) 5, false, null, 6);
            this.f25752d = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8381e) && this.f25752d == ((C8381e) obj).f25752d;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f25752d;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("EdgeLocation(allowed="), this.f25752d, ")");
        }
    }

    /* renamed from: e.a.b0.b.g.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$f.class */
    public static final class C8382f extends AbstractC8376a {

        /* renamed from: d */
        public static final C8382f f25753d = new C8382f();

        public C8382f() {
            super((byte) 0, false, null, 6);
        }
    }

    /* renamed from: e.a.b0.b.g.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$g.class */
    public static final class C8383g extends AbstractC8376a {

        /* renamed from: d */
        public final boolean f25754d;

        public C8383g(boolean z) {
            super((byte) 4, false, null, 6);
            this.f25754d = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8383g) && this.f25754d == ((C8383g) obj).f25754d;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f25754d;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("UpdateRequired(required="), this.f25754d, ")");
        }
    }

    /* renamed from: e.a.b0.b.g.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/g/a$h.class */
    public static final class C8384h extends AbstractC8376a {

        /* renamed from: d */
        public final boolean f25755d;

        public C8384h(boolean z) {
            super((byte) 2, false, null, 6);
            this.f25755d = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C8384h) && this.f25755d == ((C8384h) obj).f25755d;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f25755d;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("WrongDc(allowed="), this.f25755d, ")");
        }
    }

    public AbstractC8376a(byte b, boolean z, List list, int i) {
        z = (i & 2) != 0 ? false : z;
        list = (i & 4) != 0 ? null : list;
        this.f25744a = b;
        this.f25745b = z;
        this.f25746c = list;
    }

    @Override // java.lang.Comparable
    public int compareTo(AbstractC8376a abstractC8376a) {
        AbstractC8376a abstractC8376a2 = abstractC8376a;
        l.e(abstractC8376a2, "other");
        return l.g(this.f25744a, abstractC8376a2.f25744a);
    }
}
