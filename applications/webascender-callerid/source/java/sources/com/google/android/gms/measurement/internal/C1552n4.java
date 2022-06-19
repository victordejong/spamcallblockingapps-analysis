package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.BlockingQueue;
/* renamed from: com.google.android.gms.measurement.internal.n4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n4.class */
final class C1552n4 extends Thread {

    /* renamed from: g */
    private final BlockingQueue<C1548m4<?>> f4397g;

    /* renamed from: i */
    final /* synthetic */ o4 f4399i;

    /* renamed from: h */
    private boolean f4398h = false;

    /* renamed from: f */
    private final Object f4396f = new Object();

    public C1552n4(o4 o4Var, String str, BlockingQueue<C1548m4<?>> blockingQueue) {
        this.f4399i = o4Var;
        C0931r.m3308k(str);
        C0931r.m3308k(blockingQueue);
        this.f4397g = blockingQueue;
        setName(str);
    }

    /* renamed from: b */
    private final void m1556b() {
        synchronized (o4.x(this.f4399i)) {
            if (!this.f4398h) {
                o4.v(this.f4399i).release();
                o4.x(this.f4399i).notifyAll();
                if (this == o4.y(this.f4399i)) {
                    o4.z(this.f4399i, (C1552n4) null);
                } else if (this == o4.A(this.f4399i)) {
                    o4.B(this.f4399i, (C1552n4) null);
                } else {
                    ((l5) this.f4399i).a.c().o().m1570a("Current scheduler thread is neither worker nor network");
                }
                this.f4398h = true;
            }
        }
    }

    /* renamed from: c */
    private final void m1555c(InterruptedException interruptedException) {
        ((l5) this.f4399i).a.c().r().m1569b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: a */
    public final void m1557a() {
        synchronized (this.f4396f) {
            this.f4396f.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                o4.v(this.f4399i).acquire();
                z = true;
            } catch (InterruptedException e) {
                m1555c(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C1548m4<?> poll = this.f4397g.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.f4386g ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.f4396f) {
                        if (this.f4397g.peek() == null) {
                            o4.w(this.f4399i);
                            try {
                                this.f4396f.wait(30000L);
                            } catch (InterruptedException e2) {
                                m1555c(e2);
                            }
                        }
                    }
                    synchronized (o4.x(this.f4399i)) {
                        if (this.f4397g.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (((l5) this.f4399i).a.z().w((String) null, C1470a3.f4124q0)) {
                m1556b();
            }
        } finally {
            m1556b();
        }
    }
}
