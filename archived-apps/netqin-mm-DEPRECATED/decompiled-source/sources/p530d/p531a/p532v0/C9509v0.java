package p530d.p531a.p532v0;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import p530d.p531a.AbstractC9251i0;
/* renamed from: d.a.v0.v0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/v0.class */
public final class C9509v0 extends AbstractC9361f0 {

    /* renamed from: b */
    public static final ReferenceQueue<C9509v0> f36341b = new ReferenceQueue<>();

    /* renamed from: c */
    public static final ConcurrentMap<C9510a, C9510a> f36342c = new ConcurrentHashMap();

    /* renamed from: d */
    public static final Logger f36343d = Logger.getLogger(C9509v0.class.getName());

    /* renamed from: d.a.v0.v0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/v0$a.class */
    public static final class C9510a extends WeakReference<C9509v0> {

        /* renamed from: f */
        public static final boolean f36344f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", "true"));

        /* renamed from: g */
        public static final RuntimeException f36345g = m2563b();

        /* renamed from: a */
        public final ReferenceQueue<C9509v0> f36346a;

        /* renamed from: b */
        public final ConcurrentMap<C9510a, C9510a> f36347b;

        /* renamed from: c */
        public final String f36348c;

        /* renamed from: d */
        public final Reference<RuntimeException> f36349d;

        /* renamed from: e */
        public volatile boolean f36350e;

        public C9510a(C9509v0 v0Var, AbstractC9251i0 i0Var, ReferenceQueue<C9509v0> referenceQueue, ConcurrentMap<C9510a, C9510a> concurrentMap) {
            super(v0Var, referenceQueue);
            this.f36349d = new SoftReference(f36344f ? new RuntimeException("ManagedChannel allocation site") : f36345g);
            this.f36348c = i0Var.toString();
            this.f36346a = referenceQueue;
            this.f36347b = concurrentMap;
            concurrentMap.put(this, this);
            m2564a(referenceQueue);
        }

        /* renamed from: a */
        public static int m2564a(ReferenceQueue<C9509v0> referenceQueue) {
            int i = 0;
            while (true) {
                C9510a aVar = (C9510a) referenceQueue.poll();
                if (aVar == null) {
                    return i;
                }
                RuntimeException runtimeException = aVar.f36349d.get();
                aVar.m2565a();
                if (!aVar.f36350e) {
                    int i2 = i + 1;
                    Level level = Level.SEVERE;
                    i = i2;
                    if (C9509v0.f36343d.isLoggable(level)) {
                        LogRecord logRecord = new LogRecord(level, "*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true.");
                        logRecord.setLoggerName(C9509v0.f36343d.getName());
                        logRecord.setParameters(new Object[]{aVar.f36348c});
                        logRecord.setThrown(runtimeException);
                        C9509v0.f36343d.log(logRecord);
                        i = i2;
                    }
                }
            }
        }

        /* renamed from: b */
        public static RuntimeException m2563b() {
            RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
            runtimeException.setStackTrace(new StackTraceElement[0]);
            return runtimeException;
        }

        /* renamed from: a */
        public final void m2565a() {
            super.clear();
            this.f36347b.remove(this);
            this.f36349d.clear();
        }

        @Override // java.lang.ref.Reference
        public void clear() {
            m2565a();
            m2564a(this.f36346a);
        }
    }

    public C9509v0(AbstractC9251i0 i0Var) {
        this(i0Var, f36341b, f36342c);
    }

    public C9509v0(AbstractC9251i0 i0Var, ReferenceQueue<C9509v0> referenceQueue, ConcurrentMap<C9510a, C9510a> concurrentMap) {
        super(i0Var);
        new C9510a(this, i0Var, referenceQueue, concurrentMap);
    }
}
