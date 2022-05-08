package com.google.android.gms.measurement.internal;

import android.os.Process;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfs.class */
public final class zzfs extends Thread {

    /* renamed from: g */
    private final BlockingQueue<zzft<?>> f9260g;

    /* renamed from: i */
    private final /* synthetic */ zzfo f9262i;
    @GuardedBy

    /* renamed from: h */
    private boolean f9261h = false;

    /* renamed from: f */
    private final Object f9259f = new Object();

    public zzfs(zzfo zzfoVar, String str, BlockingQueue<zzft<?>> blockingQueue) {
        this.f9262i = zzfoVar;
        Preconditions.m14523k(str);
        Preconditions.m14523k(blockingQueue);
        this.f9260g = blockingQueue;
        setName(str);
    }

    /* renamed from: b */
    private final void m11389b(InterruptedException interruptedException) {
        this.f9262i.mo11081c().m11557G().m11539b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: c */
    private final void m11388c() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        zzfs zzfsVar;
        zzfs zzfsVar2;
        obj = this.f9262i.f9246i;
        synchronized (obj) {
            if (!this.f9261h) {
                semaphore = this.f9262i.f9247j;
                semaphore.release();
                obj2 = this.f9262i.f9246i;
                obj2.notifyAll();
                zzfsVar = this.f9262i.f9240c;
                if (this == zzfsVar) {
                    this.f9262i.f9240c = null;
                } else {
                    zzfsVar2 = this.f9262i.f9241d;
                    if (this == zzfsVar2) {
                        this.f9262i.f9241d = null;
                    } else {
                        this.f9262i.mo11081c().m11560D().m11540a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f9261h = true;
            }
        }
    }

    /* renamed from: a */
    public final void m11390a() {
        synchronized (this.f9259f) {
            this.f9259f.notifyAll();
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
                semaphore = this.f9262i.f9247j;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                m11389b(e);
            }
        }
        try {
            int i = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzft<?> poll = this.f9260g.poll();
                if (poll != null) {
                    if (!poll.f9264g) {
                        i = 10;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f9259f) {
                        if (this.f9260g.peek() == null) {
                            z = this.f9262i.f9248k;
                            if (!z) {
                                try {
                                    this.f9259f.wait(30000L);
                                } catch (InterruptedException e2) {
                                    m11389b(e2);
                                }
                            }
                        }
                    }
                    obj = this.f9262i.f9246i;
                    synchronized (obj) {
                        if (this.f9260g.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f9262i.m11311l().m10880r(zzat.f8963r0)) {
                m11388c();
            }
        } finally {
            m11388c();
        }
    }
}
