package p193e.p194a.p619d.p637c0.p640x1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.x1.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/a.class */
public abstract class AbstractC11514a {

    /* renamed from: e.a.d.c0.x1.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/a$a.class */
    public static final class C11515a extends AbstractC11514a {

        /* renamed from: a */
        public final C19263a f33807a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11515a(C19263a c19263a) {
            super(null);
            l.e(c19263a, "headset");
            this.f33807a = c19263a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11515a) && l.a(this.f33807a, ((C11515a) obj).f33807a);
            }
            return true;
        }

        public int hashCode() {
            C19263a c19263a = this.f33807a;
            return c19263a != null ? c19263a.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Bluetooth(headset=");
            m8728C.append(this.f33807a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.d.c0.x1.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/a$b.class */
    public static final class C11516b extends AbstractC11514a {

        /* renamed from: a */
        public static final C11516b f33808a = new C11516b();

        public C11516b() {
            super(null);
        }
    }

    /* renamed from: e.a.d.c0.x1.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/a$c.class */
    public static final class C11517c extends AbstractC11514a {

        /* renamed from: a */
        public static final C11517c f33809a = new C11517c();

        public C11517c() {
            super(null);
        }
    }

    /* renamed from: e.a.d.c0.x1.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/a$d.class */
    public static final class C11518d extends AbstractC11514a {

        /* renamed from: a */
        public static final C11518d f33810a = new C11518d();

        public C11518d() {
            super(null);
        }
    }

    public AbstractC11514a() {
    }

    public AbstractC11514a(f fVar) {
    }
}
