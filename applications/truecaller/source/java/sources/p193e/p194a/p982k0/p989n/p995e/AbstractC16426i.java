package p193e.p194a.p982k0.p989n.p995e;

import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k0.n.e.i */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/i.class */
public abstract class AbstractC16426i {

    /* renamed from: e.a.k0.n.e.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/i$a.class */
    public static final class C16427a extends AbstractC16426i {

        /* renamed from: a */
        public final IOException f46164a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16427a(IOException iOException) {
            super(null);
            l.e(iOException, "internalException");
            this.f46164a = iOException;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16427a) && l.a(this.f46164a, ((C16427a) obj).f46164a);
            }
            return true;
        }

        public int hashCode() {
            IOException iOException = this.f46164a;
            return iOException != null ? iOException.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FileError(internalException=");
            m8728C.append(this.f46164a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k0.n.e.i$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/i$b.class */
    public static final class C16428b extends AbstractC16426i {

        /* renamed from: a */
        public final IllegalStateException f46165a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16428b(IllegalStateException illegalStateException) {
            super(null);
            l.e(illegalStateException, "internalException");
            this.f46165a = illegalStateException;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16428b) && l.a(this.f46165a, ((C16428b) obj).f46165a);
            }
            return true;
        }

        public int hashCode() {
            IllegalStateException illegalStateException = this.f46165a;
            return illegalStateException != null ? illegalStateException.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("InternalError(internalException=");
            m8728C.append(this.f46165a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k0.n.e.i$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/i$c.class */
    public static final class C16429c extends AbstractC16426i {

        /* renamed from: a */
        public static final C16429c f46166a = new C16429c();

        public C16429c() {
            super(null);
        }
    }

    /* renamed from: e.a.k0.n.e.i$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/i$d.class */
    public static final class C16430d extends AbstractC16426i {

        /* renamed from: a */
        public static final C16430d f46167a = new C16430d();

        public C16430d() {
            super(null);
        }
    }

    public AbstractC16426i() {
    }

    public AbstractC16426i(f fVar) {
    }
}
