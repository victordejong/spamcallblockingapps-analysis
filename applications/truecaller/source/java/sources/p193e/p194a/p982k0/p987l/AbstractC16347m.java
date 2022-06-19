package p193e.p194a.p982k0.p987l;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k0.l.m */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/m.class */
public abstract class AbstractC16347m {

    /* renamed from: e.a.k0.l.m$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/m$a.class */
    public static final class C16348a extends AbstractC16347m {

        /* renamed from: a */
        public final C16344j f46005a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16348a(C16344j c16344j) {
            super(null);
            l.e(c16344j, "result");
            this.f46005a = c16344j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16348a) && l.a(this.f46005a, ((C16348a) obj).f46005a);
            }
            return true;
        }

        public int hashCode() {
            C16344j c16344j = this.f46005a;
            return c16344j != null ? c16344j.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ended(result=");
            m8728C.append(this.f46005a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k0.l.m$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/m$b.class */
    public static final class C16349b extends AbstractC16347m {

        /* renamed from: a */
        public static final C16349b f46006a = new C16349b();

        public C16349b() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.l.m$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/m$c.class */
    public static final class C16350c extends AbstractC16347m {

        /* renamed from: a */
        public static final C16350c f46007a = new C16350c();

        public C16350c() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.l.m$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/m$d.class */
    public static final class C16351d extends AbstractC16347m {

        /* renamed from: a */
        public final C16346l f46008a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16351d(C16346l c16346l) {
            super(null);
            l.e(c16346l, RemoteMessageConst.DATA);
            this.f46008a = c16346l;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16351d) && l.a(this.f46008a, ((C16351d) obj).f46008a);
            }
            return true;
        }

        public int hashCode() {
            C16346l c16346l = this.f46008a;
            return c16346l != null ? c16346l.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Started(data=");
            m8728C.append(this.f46008a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC16347m() {
    }

    public AbstractC16347m(f fVar) {
    }
}
