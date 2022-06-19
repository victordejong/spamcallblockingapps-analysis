package p193e.p194a.p749f3;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.f3.x */
/* loaded from: classes6-dex2jar.jar:e/a/f3/x.class */
public abstract class AbstractC13931x {

    /* renamed from: e.a.f3.x$a */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/x$a.class */
    public static final class C13932a extends AbstractC13931x {

        /* renamed from: a */
        public static final C13932a f40339a = new C13932a();

        public C13932a() {
            super(null);
        }
    }

    /* renamed from: e.a.f3.x$b */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/x$b.class */
    public static final class C13933b extends AbstractC13931x {

        /* renamed from: a */
        public final float f40340a;

        /* renamed from: b */
        public final float f40341b;

        public C13933b(float f, float f2) {
            super(null);
            this.f40340a = f;
            this.f40341b = f2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C13933b)) {
                    return false;
                }
                C13933b c13933b = (C13933b) obj;
                return Float.compare(this.f40340a, c13933b.f40340a) == 0 && Float.compare(this.f40341b, c13933b.f40341b) == 0;
            }
            return true;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f40341b) + (Float.floatToIntBits(this.f40340a) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Drag(deltaX=");
            m8728C.append(this.f40340a);
            m8728C.append(", deltaY=");
            m8728C.append(this.f40341b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.f3.x$c */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/x$c.class */
    public static final class C13934c extends AbstractC13931x {

        /* renamed from: a */
        public final float f40342a;

        /* renamed from: b */
        public final float f40343b;

        public C13934c(float f, float f2) {
            super(null);
            this.f40342a = f;
            this.f40343b = f2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C13934c)) {
                    return false;
                }
                C13934c c13934c = (C13934c) obj;
                return Float.compare(this.f40342a, c13934c.f40342a) == 0 && Float.compare(this.f40343b, c13934c.f40343b) == 0;
            }
            return true;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f40343b) + (Float.floatToIntBits(this.f40342a) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Fling(xVelocity=");
            m8728C.append(this.f40342a);
            m8728C.append(", yVelocity=");
            m8728C.append(this.f40343b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.f3.x$d */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/x$d.class */
    public static final class C13935d extends AbstractC13931x {

        /* renamed from: a */
        public static final C13935d f40344a = new C13935d();

        public C13935d() {
            super(null);
        }
    }

    /* renamed from: e.a.f3.x$e */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/x$e.class */
    public static final class C13936e extends AbstractC13931x {

        /* renamed from: a */
        public static final C13936e f40345a = new C13936e();

        public C13936e() {
            super(null);
        }
    }

    public AbstractC13931x() {
    }

    public AbstractC13931x(f fVar) {
    }
}
