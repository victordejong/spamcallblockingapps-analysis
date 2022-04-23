package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dv.class */
public final class C2741dv extends Thread {

    /* renamed from: b */
    private final BlockingQueue<C2742dw<?>> f16718b;

    /* renamed from: d */
    private final /* synthetic */ zzft f16720d;

    /* renamed from: c */
    private boolean f16719c = false;

    /* renamed from: a */
    private final Object f16717a = new Object();

    public C2741dv(zzft zzftVar, String str, BlockingQueue<C2742dw<?>> blockingQueue) {
        this.f16720d = zzftVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.f16718b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    private final void m2124a(InterruptedException interruptedException) {
        this.f16720d.zzr().zzi().zza(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: b */
    private final void m2123b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C2741dv dvVar;
        C2741dv dvVar2;
        obj = this.f16720d.f17187g;
        synchronized (obj) {
            if (!this.f16719c) {
                semaphore = this.f16720d.f17188h;
                semaphore.release();
                obj2 = this.f16720d.f17187g;
                obj2.notifyAll();
                dvVar = this.f16720d.f17181a;
                if (this == dvVar) {
                    this.f16720d.f17181a = null;
                } else {
                    dvVar2 = this.f16720d.f17182b;
                    if (this == dvVar2) {
                        this.f16720d.f17182b = null;
                    } else {
                        this.f16720d.zzr().zzf().zza("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f16719c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m2125a() {
        synchronized (this.f16717a) {
            this.f16717a.notifyAll();
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
                semaphore = this.f16720d.f17188h;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                m2124a(e);
            }
        }
        try {
            int i = Process.getThreadPriority(Process.myTid());
            while (true) {
                C2742dw<?> poll = this.f16718b.poll();
                if (poll != null) {
                    if (!poll.f16721a) {
                        i = 10;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f16717a) {
                        if (this.f16718b.peek() == null) {
                            z = this.f16720d.f17189i;
                            if (!z) {
                                try {
                                    this.f16717a.wait(30000L);
                                } catch (InterruptedException e2) {
                                    m2124a(e2);
                                }
                            }
                        }
                    }
                    obj = this.f16720d.f17187g;
                    synchronized (obj) {
                        if (this.f16718b.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f16720d.zzt().zza(zzap.zzco)) {
                m2123b();
            }
        } finally {
            m2123b();
        }
    }
}
