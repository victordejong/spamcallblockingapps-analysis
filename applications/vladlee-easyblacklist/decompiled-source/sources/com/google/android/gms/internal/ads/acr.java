package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acr.class */
abstract class acr<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a */
    private static final Runnable f7228a = new acs((byte) 0);

    /* renamed from: b */
    private static final Runnable f7229b = new acs((byte) 0);

    /* renamed from: c */
    private static final Runnable f7230c = new acs((byte) 0);

    /* renamed from: a */
    abstract void mo5453a(@NullableDecl T t, @NullableDecl Throwable th);

    /* renamed from: a */
    abstract boolean mo5454a();

    /* renamed from: c */
    abstract T mo5452c();

    /* renamed from: d */
    abstract String mo5451d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m5461e() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f7229b)) {
            try {
                ((Thread) runnable).interrupt();
                if (getAndSet(f7228a) == f7230c) {
                    LockSupport.unpark((Thread) runnable);
                }
            } catch (Throwable th) {
                if (getAndSet(f7228a) == f7230c) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        T c;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !mo5454a();
            if (z) {
                try {
                    c = mo5452c();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, f7228a)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            if (runnable != f7229b && runnable != f7230c) {
                                break;
                            }
                            int i2 = i + 1;
                            if (i2 > 1000) {
                                Runnable runnable2 = f7230c;
                                if (runnable != runnable2) {
                                    z2 = z2;
                                    if (!compareAndSet(f7229b, runnable2)) {
                                    }
                                }
                                z2 = Thread.interrupted() || z2;
                                LockSupport.park(this);
                            } else {
                                Thread.yield();
                                z2 = z2;
                            }
                            runnable = get();
                            i = i2;
                        }
                        if (z2) {
                            currentThread.interrupt();
                        }
                    }
                    if (z) {
                        mo5453a(null, th);
                        return;
                    }
                    return;
                }
            } else {
                c = null;
            }
            if (!compareAndSet(currentThread, f7228a)) {
                Runnable runnable3 = get();
                boolean z3 = false;
                int i3 = 0;
                while (true) {
                    if (runnable3 != f7229b && runnable3 != f7230c) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 > 1000) {
                        Runnable runnable4 = f7230c;
                        if (runnable3 != runnable4) {
                            z3 = z3;
                            if (!compareAndSet(f7229b, runnable4)) {
                            }
                        }
                        z3 = Thread.interrupted() || z3;
                        LockSupport.park(this);
                    } else {
                        Thread.yield();
                        z3 = z3;
                    }
                    runnable3 = get();
                    i3 = i4;
                }
                if (z3) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                mo5453a(c, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f7228a) {
            str = "running=[DONE]";
        } else if (runnable == f7229b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            str = sb.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String d = mo5451d();
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(d).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(d);
        return sb2.toString();
    }
}
