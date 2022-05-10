package p131c.p161d.p266c.p275i.p276a;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.c.i.a.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/c.class */
public abstract class AbstractC5090c {

    /* renamed from: c */
    public static final Logger f17684c = Logger.getLogger(AbstractC5090c.class.getName());

    /* renamed from: a */
    public volatile Set<Throwable> f17685a;

    /* renamed from: b */
    public volatile int f17686b;

    /* renamed from: c.d.c.i.a.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/c$b.class */
    public static abstract class AbstractC5092b {
        public AbstractC5092b() {
        }
    }

    /* renamed from: c.d.c.i.a.c$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/c$c.class */
    public static final class C5093c extends AbstractC5092b {
        public C5093c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
        }
    }

    /* renamed from: c.d.c.i.a.c$d */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/c$d.class */
    public static final class C5094d extends AbstractC5092b {
        public C5094d() {
            super();
        }
    }

    static {
        Throwable th = null;
        try {
            new C5093c(AtomicReferenceFieldUpdater.newUpdater(AbstractC5090c.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(AbstractC5090c.class, "b"));
        } catch (Throwable th2) {
            th = th2;
            new C5094d();
        }
        if (th != null) {
            f17684c.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
