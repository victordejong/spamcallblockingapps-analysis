package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzfr;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* renamed from: c.d.b.d.i.a.q3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/q3.class */
public final class C4791q3 extends Thread {

    /* renamed from: b */
    public final BlockingQueue<C4773o3<?>> f17338b;

    /* renamed from: d */
    public final /* synthetic */ zzfr f17340d;

    /* renamed from: c */
    public boolean f17339c = false;

    /* renamed from: a */
    public final Object f17337a = new Object();

    public C4791q3(zzfr zzfrVar, String str, BlockingQueue<C4773o3<?>> blockingQueue) {
        this.f17340d = zzfrVar;
        Preconditions.m17288a(str);
        Preconditions.m17288a(blockingQueue);
        this.f17338b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    public final void m24892a() {
        synchronized (this.f17337a) {
            this.f17337a.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m24891a(InterruptedException interruptedException) {
        this.f17340d.mo8789p().m9149t().m9142a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: b */
    public final void m24890b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C4791q3 q3Var;
        C4791q3 q3Var2;
        obj = this.f17340d.f29997i;
        synchronized (obj) {
            if (!this.f17339c) {
                semaphore = this.f17340d.f29998j;
                semaphore.release();
                obj2 = this.f17340d.f29997i;
                obj2.notifyAll();
                q3Var = this.f17340d.f29991c;
                if (this == q3Var) {
                    this.f17340d.f29991c = null;
                } else {
                    q3Var2 = this.f17340d.f29992d;
                    if (this == q3Var2) {
                        this.f17340d.f29992d = null;
                    } else {
                        this.f17340d.mo8789p().m9152q().m9143a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f17339c = true;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Semaphore semaphore;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore = this.f17340d.f29998j;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                m24891a(e);
            }
        }
        try {
            int i = Process.getThreadPriority(Process.myTid());
            while (true) {
                C4773o3<?> poll = this.f17338b.poll();
                if (poll != null) {
                    if (!poll.f17296b) {
                        i = 10;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f17337a) {
                        if (this.f17338b.peek() == null) {
                            z = this.f17340d.f29999k;
                            if (!z) {
                                try {
                                    this.f17337a.wait(30000L);
                                } catch (InterruptedException e2) {
                                    m24891a(e2);
                                }
                            }
                        }
                    }
                    obj = this.f17340d.f29997i;
                    synchronized (obj) {
                        if (this.f17338b.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f17340d.m24897h().m9354a(zzas.f29892r0)) {
                m24890b();
            }
            m24890b();
        } catch (Throwable th) {
            m24890b();
            throw th;
        }
    }
}
