package p193e.p194a.p437c.p438a.p507p.p510c;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p610y.C10889m;
import s1.s;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.a.p.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d.class */
public abstract class AbstractC9460d {

    /* renamed from: a */
    public final long f28701a;

    /* renamed from: e.a.c.a.p.c.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d$a.class */
    public static final class C9461a extends AbstractC9460d implements AbstractC9459c {

        /* renamed from: b */
        public final C9457a f28702b;

        /* renamed from: c */
        public final C10889m f28703c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9461a(C9457a c9457a, C10889m c10889m) {
            super(c9457a.f28695a.f28698a, null);
            l.e(c9457a, "meta");
            l.e(c10889m, "uiModel");
            this.f28702b = c9457a;
            this.f28703c = c10889m;
        }

        @Override // p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9459c
        /* renamed from: a */
        public b mo27544a() {
            return this.f28702b.f28696b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9461a)) {
                    return false;
                }
                C9461a c9461a = (C9461a) obj;
                return l.a(this.f28702b, c9461a.f28702b) && l.a(this.f28703c, c9461a.f28703c);
            }
            return true;
        }

        public int hashCode() {
            C9457a c9457a = this.f28702b;
            int i = 0;
            int hashCode = c9457a != null ? c9457a.hashCode() : 0;
            C10889m c10889m = this.f28703c;
            if (c10889m != null) {
                i = c10889m.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Past(meta=");
            m8728C.append(this.f28702b);
            m8728C.append(", uiModel=");
            m8728C.append(this.f28703c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.p.c.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d$b.class */
    public static final class C9462b extends AbstractC9460d {

        /* renamed from: b */
        public final String f28704b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9462b(String str) {
            super(-1001L, null);
            l.e(str, "header");
            this.f28704b = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C9462b) && l.a(this.f28704b, ((C9462b) obj).f28704b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f28704b;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("SectionHeader(header="), this.f28704b, ")");
        }
    }

    /* renamed from: e.a.c.a.p.c.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d$c.class */
    public static final class C9463c extends AbstractC9460d {

        /* renamed from: b */
        public final s1.z.b.l<Boolean, s> f28705b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9463c(s1.z.b.l<? super Boolean, s> lVar) {
            super(-1003L, null);
            l.e(lVar, "expandCallback");
            this.f28705b = lVar;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C9463c) && l.a(this.f28705b, ((C9463c) obj).f28705b);
            }
            return true;
        }

        public int hashCode() {
            s1.z.b.l<Boolean, s> lVar = this.f28705b;
            return lVar != null ? lVar.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpcomingCollapse(expandCallback=");
            m8728C.append(this.f28705b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.p.c.d$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d$d.class */
    public static final class C9464d extends AbstractC9460d {

        /* renamed from: b */
        public final List<String> f28706b;

        /* renamed from: c */
        public final s1.z.b.l<Boolean, s> f28707c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9464d(List<String> list, s1.z.b.l<? super Boolean, s> lVar) {
            super(-1002L, null);
            l.e(list, "senders");
            l.e(lVar, "expandCallback");
            this.f28706b = list;
            this.f28707c = lVar;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9464d)) {
                    return false;
                }
                C9464d c9464d = (C9464d) obj;
                return l.a(this.f28706b, c9464d.f28706b) && l.a(this.f28707c, c9464d.f28707c);
            }
            return true;
        }

        public int hashCode() {
            List<String> list = this.f28706b;
            int i = 0;
            int hashCode = list != null ? list.hashCode() : 0;
            s1.z.b.l<Boolean, s> lVar = this.f28707c;
            if (lVar != null) {
                i = lVar.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpcomingExpand(senders=");
            m8728C.append(this.f28706b);
            m8728C.append(", expandCallback=");
            m8728C.append(this.f28707c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.a.p.c.d$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/d$e.class */
    public static final class C9465e extends AbstractC9460d implements AbstractC9459c {

        /* renamed from: b */
        public final C9457a f28708b;

        /* renamed from: c */
        public final C10889m f28709c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9465e(C9457a c9457a, C10889m c10889m) {
            super(c9457a.f28695a.f28698a, null);
            l.e(c9457a, "meta");
            l.e(c10889m, "uiModel");
            this.f28708b = c9457a;
            this.f28709c = c10889m;
        }

        @Override // p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9459c
        /* renamed from: a */
        public b mo27544a() {
            return this.f28708b.f28696b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9465e)) {
                    return false;
                }
                C9465e c9465e = (C9465e) obj;
                return l.a(this.f28708b, c9465e.f28708b) && l.a(this.f28709c, c9465e.f28709c);
            }
            return true;
        }

        public int hashCode() {
            C9457a c9457a = this.f28708b;
            int i = 0;
            int hashCode = c9457a != null ? c9457a.hashCode() : 0;
            C10889m c10889m = this.f28709c;
            if (c10889m != null) {
                i = c10889m.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpcomingExpanded(meta=");
            m8728C.append(this.f28708b);
            m8728C.append(", uiModel=");
            m8728C.append(this.f28709c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC9460d(long j, f fVar) {
        this.f28701a = j;
    }
}
