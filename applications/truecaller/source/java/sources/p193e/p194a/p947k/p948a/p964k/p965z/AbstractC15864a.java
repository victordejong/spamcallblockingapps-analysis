package p193e.p194a.p947k.p948a.p964k.p965z;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
/* renamed from: e.a.k.a.k.z.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/a.class */
public abstract class AbstractC15864a {

    /* renamed from: e.a.k.a.k.z.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/a$a.class */
    public static final class C15865a extends AbstractC15864a {

        /* renamed from: a */
        public final boolean f44756a;

        /* renamed from: b */
        public final float f44757b;

        public C15865a(boolean z, float f) {
            super(null);
            this.f44756a = z;
            this.f44757b = f;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15865a)) {
                    return false;
                }
                C15865a c15865a = (C15865a) obj;
                return this.f44756a == c15865a.f44756a && Float.compare(this.f44757b, c15865a.f44757b) == 0;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f44756a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return Float.floatToIntBits(this.f44757b) + ((z2 ? 1 : 0) * 31);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("HasAudio(mute=");
            m8728C.append(this.f44756a);
            m8728C.append(", volume=");
            m8728C.append(this.f44757b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.k.z.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/a$b.class */
    public static final class C15866b extends AbstractC15864a {

        /* renamed from: a */
        public static final C15866b f44758a = new C15866b();

        public C15866b() {
            super(null);
        }
    }

    /* renamed from: e.a.k.a.k.z.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/a$c.class */
    public static final class C15867c extends AbstractC15864a {

        /* renamed from: a */
        public static final C15867c f44759a = new C15867c();

        public C15867c() {
            super(null);
        }
    }

    public AbstractC15864a(f fVar) {
    }
}
