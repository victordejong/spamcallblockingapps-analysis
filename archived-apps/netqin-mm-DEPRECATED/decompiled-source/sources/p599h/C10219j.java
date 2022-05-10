package p599h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10129c;
import p599h.p600d0.p602f.C10130d;
import p599h.p600d0.p602f.C10133f;
import p599h.p600d0.p607k.C10203f;
/* renamed from: h.j */
/* loaded from: classes2-dex2jar.jar:h/j.class */
public final class C10219j {

    /* renamed from: g */
    public static final Executor f37704g = new ThreadPoolExecutor(0, (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, 60, TimeUnit.SECONDS, new SynchronousQueue(), C10109c.m1453a("OkHttp ConnectionPool", true));

    /* renamed from: a */
    public final int f37705a;

    /* renamed from: b */
    public final long f37706b;

    /* renamed from: c */
    public final Runnable f37707c;

    /* renamed from: d */
    public final Deque<C10129c> f37708d;

    /* renamed from: e */
    public final C10130d f37709e;

    /* renamed from: f */
    public boolean f37710f;

    /* renamed from: h.j$a */
    /* loaded from: classes2-dex2jar.jar:h/j$a.class */
    public class RunnableC10220a implements Runnable {
        public RunnableC10220a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long a = C10219j.this.m1043a(System.nanoTime());
                if (a != -1) {
                    if (a > 0) {
                        long j = a / 1000000;
                        synchronized (C10219j.this) {
                            try {
                                try {
                                    C10219j.this.wait(j, (int) (a - (1000000 * j)));
                                } catch (InterruptedException e) {
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public C10219j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public C10219j(int i, long j, TimeUnit timeUnit) {
        this.f37707c = new RunnableC10220a();
        this.f37708d = new ArrayDeque();
        this.f37709e = new C10130d();
        this.f37705a = i;
        this.f37706b = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    /* renamed from: a */
    public final int m1039a(C10129c cVar, long j) {
        List<Reference<C10133f>> list = cVar.f37410n;
        int i = 0;
        while (i < list.size()) {
            Reference<C10133f> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C10133f.C10134a aVar = (C10133f.C10134a) reference;
                C10203f.m1071d().mo1084a("A connection to " + cVar.m1365e().m1489a().m1544k() + " was leaked. Did you forget to close a response body?", aVar.f37437a);
                list.remove(i);
                cVar.f37407k = true;
                if (list.isEmpty()) {
                    cVar.f37411o = j - this.f37706b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1043a(long r6) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.C10219j.m1043a(long):long");
    }

    /* renamed from: a */
    public C10129c m1041a(C10090a aVar, C10133f fVar, C10104c0 c0Var) {
        for (C10129c cVar : this.f37708d) {
            if (cVar.m1374a(aVar, c0Var)) {
                fVar.m1345a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public Socket m1042a(C10090a aVar, C10133f fVar) {
        for (C10129c cVar : this.f37708d) {
            if (cVar.m1374a(aVar, null) && cVar.m1366d() && cVar != fVar.m1338c()) {
                return fVar.m1339b(cVar);
            }
        }
        return null;
    }

    /* renamed from: a */
    public boolean m1040a(C10129c cVar) {
        if (cVar.f37407k || this.f37705a == 0) {
            this.f37708d.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    /* renamed from: b */
    public void m1038b(C10129c cVar) {
        if (!this.f37710f) {
            this.f37710f = true;
            f37704g.execute(this.f37707c);
        }
        this.f37708d.add(cVar);
    }
}
