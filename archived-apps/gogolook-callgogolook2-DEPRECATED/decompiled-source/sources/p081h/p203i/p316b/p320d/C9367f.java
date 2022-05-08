package p081h.p203i.p316b.p320d;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p317a.C9307p;
/* renamed from: h.i.b.d.f */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/f.class */
public final class C9367f implements Closeable {

    /* renamed from: d */
    public static final AbstractC9370c f21404d;

    /* renamed from: a */
    public final AbstractC9370c f21405a;

    /* renamed from: b */
    public final Deque<Closeable> f21406b = new ArrayDeque(4);

    /* renamed from: c */
    public Throwable f21407c;

    /* renamed from: h.i.b.d.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/f$a.class */
    public static final class C9368a implements AbstractC9370c {

        /* renamed from: a */
        public static final C9368a f21408a = new C9368a();

        @Override // p081h.p203i.p316b.p320d.C9367f.AbstractC9370c
        /* renamed from: a */
        public void mo15351a(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = C9366e.f21403a;
            Level level = Level.WARNING;
            logger.log(level, "Suppressing exception thrown when closing " + closeable, th2);
        }
    }

    /* renamed from: h.i.b.d.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/f$b.class */
    public static final class C9369b implements AbstractC9370c {

        /* renamed from: a */
        public static final C9369b f21409a = new C9369b();

        /* renamed from: b */
        public static final Method f21410b = m15353a();

        /* renamed from: a */
        public static Method m15353a() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable th) {
                return null;
            }
        }

        /* renamed from: b */
        public static boolean m15352b() {
            return f21410b != null;
        }

        @Override // p081h.p203i.p316b.p320d.C9367f.AbstractC9370c
        /* renamed from: a */
        public void mo15351a(Closeable closeable, Throwable th, Throwable th2) {
            if (th != th2) {
                try {
                    f21410b.invoke(th, th2);
                } catch (Throwable th3) {
                    C9368a.f21408a.mo15351a(closeable, th, th2);
                }
            }
        }
    }

    /* renamed from: h.i.b.d.f$c */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/f$c.class */
    public interface AbstractC9370c {
        /* renamed from: a */
        void mo15351a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        f21404d = C9369b.m15352b() ? C9369b.f21409a : C9368a.f21408a;
    }

    public C9367f(AbstractC9370c cVar) {
        C9301k.m15478a(cVar);
        this.f21405a = cVar;
    }

    /* renamed from: a */
    public static C9367f m15356a() {
        return new C9367f(f21404d);
    }

    /* renamed from: a */
    public <C extends Closeable> C m15355a(C c) {
        if (c != null) {
            this.f21406b.addFirst(c);
        }
        return c;
    }

    /* renamed from: a */
    public RuntimeException m15354a(Throwable th) throws IOException {
        C9301k.m15478a(th);
        this.f21407c = th;
        C9307p.m15447b(th, IOException.class);
        throw new RuntimeException(th);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th = this.f21407c;
        while (!this.f21406b.isEmpty()) {
            Closeable removeFirst = this.f21406b.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    this.f21405a.mo15351a(removeFirst, th, th2);
                }
            }
        }
        if (this.f21407c == null && th != null) {
            C9307p.m15447b(th, IOException.class);
            throw new AssertionError(th);
        }
    }
}
