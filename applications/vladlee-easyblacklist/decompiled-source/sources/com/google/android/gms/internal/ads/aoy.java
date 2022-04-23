package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.gass.AdShield2Logger;
import com.google.android.gms.internal.ads.zznx;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoy.class */
public final class aoy<T extends zznx> extends zzddu implements Runnable {

    /* renamed from: a */
    public final int f8079a;

    /* renamed from: b */
    private final T f8080b;

    /* renamed from: c */
    private final zznv<T> f8081c;

    /* renamed from: d */
    private final long f8082d;

    /* renamed from: e */
    private IOException f8083e;

    /* renamed from: f */
    private int f8084f;

    /* renamed from: g */
    private volatile Thread f8085g;

    /* renamed from: h */
    private volatile boolean f8086h;

    /* renamed from: i */
    private final /* synthetic */ zznw f8087i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aoy(zznw zznwVar, Looper looper, T t, zznv<T> zznvVar, int i, long j) {
        super(looper);
        this.f8087i = zznwVar;
        this.f8080b = t;
        this.f8081c = zznvVar;
        this.f8079a = i;
        this.f8082d = j;
    }

    /* renamed from: a */
    private final void m4778a() {
        ExecutorService executorService;
        aoy aoyVar;
        this.f8083e = null;
        executorService = this.f8087i.f15223a;
        aoyVar = this.f8087i.f15224b;
        executorService.execute(aoyVar);
    }

    /* renamed from: b */
    private final void m4775b() {
        this.f8087i.f15224b = null;
    }

    /* renamed from: a */
    public final void m4777a(long j) {
        aoy aoyVar;
        aoyVar = this.f8087i.f15224b;
        zzoc.checkState(aoyVar == null);
        this.f8087i.f15224b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m4778a();
        }
    }

    /* renamed from: a */
    public final void m4776a(boolean z) {
        this.f8086h = z;
        this.f8083e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f8080b.cancelLoad();
            if (this.f8085g != null) {
                this.f8085g.interrupt();
            }
        }
        if (z) {
            m4775b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f8081c.zza((zznv<T>) this.f8080b, elapsedRealtime, elapsedRealtime - this.f8082d, true);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (!this.f8086h) {
            if (message.what == 0) {
                m4778a();
            } else if (message.what != 4) {
                m4775b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f8082d;
                if (this.f8080b.zzhp()) {
                    this.f8081c.zza((zznv<T>) this.f8080b, elapsedRealtime, j, false);
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    this.f8081c.zza((zznv<T>) this.f8080b, elapsedRealtime, j, false);
                } else if (i == 2) {
                    this.f8081c.zza(this.f8080b, elapsedRealtime, j);
                } else if (i == 3) {
                    this.f8083e = (IOException) message.obj;
                    int zza = this.f8081c.zza((zznv<T>) this.f8080b, elapsedRealtime, j, this.f8083e);
                    if (zza == 3) {
                        this.f8087i.f15225c = this.f8083e;
                    } else if (zza != 2) {
                        this.f8084f = zza == 1 ? 1 : this.f8084f + 1;
                        m4777a(Math.min((this.f8084f - 1) * 1000, (int) AdShield2Logger.EVENTID_CLICK_SIGNALS));
                    }
                }
            } else {
                throw ((Error) message.obj);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f8085g = Thread.currentThread();
            if (!this.f8080b.zzhp()) {
                String valueOf = String.valueOf(this.f8080b.getClass().getSimpleName());
                zzon.beginSection(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f8080b.zzhq();
                    zzon.endSection();
                } catch (Throwable th) {
                    zzon.endSection();
                    throw th;
                }
            }
            if (!this.f8086h) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.f8086h) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f8086h) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            zzoc.checkState(this.f8080b.zzhp());
            if (!this.f8086h) {
                sendEmptyMessage(2);
            }
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (!this.f8086h) {
                obtainMessage(3, new zzoa(e4)).sendToTarget();
            }
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (!this.f8086h) {
                obtainMessage(3, new zzoa(e5)).sendToTarget();
            }
        }
    }
}
