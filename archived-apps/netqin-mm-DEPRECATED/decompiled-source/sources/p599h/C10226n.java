package p599h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p599h.C10247x;
import p599h.p600d0.C10109c;
/* renamed from: h.n */
/* loaded from: classes2-dex2jar.jar:h/n.class */
public final class C10226n {

    /* renamed from: c */
    public Runnable f37740c;

    /* renamed from: d */
    public ExecutorService f37741d;

    /* renamed from: a */
    public int f37738a = 64;

    /* renamed from: b */
    public int f37739b = 5;

    /* renamed from: e */
    public final Deque<C10247x.C10249b> f37742e = new ArrayDeque();

    /* renamed from: f */
    public final Deque<C10247x.C10249b> f37743f = new ArrayDeque();

    /* renamed from: g */
    public final Deque<C10247x> f37744g = new ArrayDeque();

    /* renamed from: a */
    public ExecutorService m1011a() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.f37741d == null) {
                this.f37741d = new ThreadPoolExecutor(0, (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C10109c.m1453a("OkHttp Dispatcher", false));
            }
            executorService = this.f37741d;
        }
        return executorService;
    }

    /* renamed from: a */
    public void m1010a(C10247x.C10249b bVar) {
        synchronized (this) {
            this.f37742e.add(bVar);
        }
        m1007b();
    }

    /* renamed from: a */
    public void m1009a(C10247x xVar) {
        synchronized (this) {
            this.f37744g.add(xVar);
        }
    }

    /* renamed from: a */
    public final <T> void m1008a(Deque<T> deque, T t) {
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t)) {
                runnable = this.f37740c;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (!m1007b() && runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: b */
    public void m1006b(C10247x.C10249b bVar) {
        m1008a(this.f37743f, bVar);
    }

    /* renamed from: b */
    public void m1005b(C10247x xVar) {
        m1008a(this.f37744g, xVar);
    }

    /* renamed from: b */
    public final boolean m1007b() {
        int i;
        boolean z;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<C10247x.C10249b> it = this.f37742e.iterator();
                while (it.hasNext()) {
                    C10247x.C10249b next = it.next();
                    if (this.f37743f.size() >= this.f37738a) {
                        break;
                    } else if (m1003c(next) < this.f37739b) {
                        it.remove();
                        arrayList.add(next);
                        this.f37743f.add(next);
                    }
                }
                z = m1004c() > 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((C10247x.C10249b) arrayList.get(i)).m825a(m1011a());
        }
        return z;
    }

    /* renamed from: c */
    public int m1004c() {
        int size;
        int size2;
        synchronized (this) {
            size = this.f37743f.size();
            size2 = this.f37744g.size();
        }
        return size + size2;
    }

    /* renamed from: c */
    public final int m1003c(C10247x.C10249b bVar) {
        int i = 0;
        for (C10247x.C10249b bVar2 : this.f37743f) {
            if (!bVar2.m823c().f37853f && bVar2.m822d().equals(bVar.m822d())) {
                i++;
            }
        }
        return i;
    }
}
