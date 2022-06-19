package p193e.p194a.p619d.p637c0.p642z1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/o.class */
public abstract class AbstractC11634o {

    /* renamed from: e.a.d.c0.z1.o$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/o$a.class */
    public static final class C11635a extends AbstractC11634o {

        /* renamed from: a */
        public final String f34166a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11635a(String str) {
            super(null);
            l.e(str, "number");
            this.f34166a = str;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: a */
        public boolean mo24329a(AbstractC11634o abstractC11634o) {
            l.e(abstractC11634o, "handle");
            return abstractC11634o instanceof C11635a ? l.a(this.f34166a, ((C11635a) abstractC11634o).f34166a) : abstractC11634o instanceof C11636b ? l.a(this.f34166a, ((C11636b) abstractC11634o).f34168b) : false;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: b */
        public boolean mo24328b(C11639p c11639p) {
            l.e(c11639p, "peerInfo");
            return l.a(c11639p.f34175c, this.f34166a);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11635a) && l.a(this.f34166a, ((C11635a) obj).f34166a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f34166a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Number(number="), this.f34166a, ")");
        }
    }

    /* renamed from: e.a.d.c0.z1.o$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/o$b.class */
    public static final class C11636b extends AbstractC11634o {

        /* renamed from: a */
        public final String f34167a;

        /* renamed from: b */
        public final String f34168b;

        /* renamed from: c */
        public final int f34169c;

        /* renamed from: d */
        public final boolean f34170d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11636b(String str, String str2, int i, boolean z) {
            super(null);
            l.e(str, "voipId");
            l.e(str2, "number");
            this.f34167a = str;
            this.f34168b = str2;
            this.f34169c = i;
            this.f34170d = z;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: a */
        public boolean mo24329a(AbstractC11634o abstractC11634o) {
            l.e(abstractC11634o, "handle");
            boolean z = false;
            if (abstractC11634o instanceof C11636b) {
                z = l.a(this.f34167a, ((C11636b) abstractC11634o).f34167a);
            } else if (abstractC11634o instanceof C11635a) {
                z = l.a(this.f34168b, ((C11635a) abstractC11634o).f34166a);
            } else if (abstractC11634o instanceof C11638d) {
                z = r.y(this.f34167a, ((C11638d) abstractC11634o).f34172a, false, 2);
            } else if (!(abstractC11634o instanceof C11637c)) {
                throw new i();
            } else {
                if (this.f34169c == ((C11637c) abstractC11634o).f34171a) {
                    z = true;
                }
            }
            return z;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: b */
        public boolean mo24328b(C11639p c11639p) {
            l.e(c11639p, "peerInfo");
            return l.a(c11639p.f34173a, this.f34167a);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C11636b)) {
                    return false;
                }
                C11636b c11636b = (C11636b) obj;
                return l.a(this.f34167a, c11636b.f34167a) && l.a(this.f34168b, c11636b.f34168b) && this.f34169c == c11636b.f34169c && this.f34170d == c11636b.f34170d;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f34167a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f34168b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            int i2 = this.f34169c;
            boolean z = this.f34170d;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            return (((((hashCode * 31) + i) * 31) + i2) * 31) + i3;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Resolved(voipId=");
            m8728C.append(this.f34167a);
            m8728C.append(", number=");
            m8728C.append(this.f34168b);
            m8728C.append(", rtcUid=");
            m8728C.append(this.f34169c);
            m8728C.append(", isStale=");
            return C22128a.m8590o(m8728C, this.f34170d, ")");
        }
    }

    /* renamed from: e.a.d.c0.z1.o$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/o$c.class */
    public static final class C11637c extends AbstractC11634o {

        /* renamed from: a */
        public final int f34171a;

        public C11637c(int i) {
            super(null);
            this.f34171a = i;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: a */
        public boolean mo24329a(AbstractC11634o abstractC11634o) {
            l.e(abstractC11634o, "handle");
            return !(abstractC11634o instanceof C11637c) ? !(!(abstractC11634o instanceof C11636b) || this.f34171a != ((C11636b) abstractC11634o).f34169c) : this.f34171a == ((C11637c) abstractC11634o).f34171a;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: b */
        public boolean mo24328b(C11639p c11639p) {
            l.e(c11639p, "peerInfo");
            return c11639p.f34176d == this.f34171a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11637c) && this.f34171a == ((C11637c) obj).f34171a;
            }
            return true;
        }

        public int hashCode() {
            return this.f34171a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("RtcUid(rtcUid="), this.f34171a, ")");
        }
    }

    /* renamed from: e.a.d.c0.z1.o$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/o$d.class */
    public static final class C11638d extends AbstractC11634o {

        /* renamed from: a */
        public final String f34172a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11638d(String str) {
            super(null);
            l.e(str, "trimmedVoipId");
            this.f34172a = str;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: a */
        public boolean mo24329a(AbstractC11634o abstractC11634o) {
            l.e(abstractC11634o, "handle");
            boolean z = false;
            if (abstractC11634o instanceof C11638d) {
                z = l.a(this.f34172a, ((C11638d) abstractC11634o).f34172a);
            } else if (abstractC11634o instanceof C11636b) {
                z = r.y(((C11636b) abstractC11634o).f34167a, this.f34172a, false, 2);
            }
            return z;
        }

        @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o
        /* renamed from: b */
        public boolean mo24328b(C11639p c11639p) {
            l.e(c11639p, "peerInfo");
            return r.y(c11639p.f34173a, this.f34172a, false, 2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11638d) && l.a(this.f34172a, ((C11638d) obj).f34172a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f34172a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("TrimmedVoipId(trimmedVoipId="), this.f34172a, ")");
        }
    }

    public AbstractC11634o() {
    }

    public AbstractC11634o(f fVar) {
    }

    /* renamed from: a */
    public abstract boolean mo24329a(AbstractC11634o abstractC11634o);

    /* renamed from: b */
    public abstract boolean mo24328b(C11639p c11639p);
}
