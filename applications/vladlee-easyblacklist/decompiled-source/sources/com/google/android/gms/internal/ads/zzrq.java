package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrq.class */
public final class zzrq {

    /* renamed from: a */
    private final Runnable f15437a = new aqe(this);

    /* renamed from: b */
    private final Object f15438b = new Object();

    /* renamed from: c */
    private zzrz f15439c;

    /* renamed from: d */
    private Context f15440d;

    /* renamed from: e */
    private zzsd f15441e;

    /* renamed from: a */
    private final zzrz m3086a(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        zzrz zzrzVar;
        synchronized (this) {
            zzrzVar = new zzrz(this.f15440d, zzq.zzle().zzxb(), baseConnectionCallbacks, baseOnConnectionFailedListener);
        }
        return zzrzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m3087a() {
        synchronized (this.f15438b) {
            if (this.f15440d != null && this.f15439c == null) {
                this.f15439c = m3086a(new aqg(this), new aqf(this));
                this.f15439c.checkAvailabilityAndConnect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3085a(zzrq zzrqVar) {
        synchronized (zzrqVar.f15438b) {
            if (zzrqVar.f15439c != null) {
                if (zzrqVar.f15439c.isConnected() || zzrqVar.f15439c.isConnecting()) {
                    zzrqVar.f15439c.disconnect();
                }
                zzrqVar.f15439c = null;
                zzrqVar.f15441e = null;
                Binder.flushPendingCommands();
            }
        }
    }

    public final void initialize(Context context) {
        if (context != null) {
            synchronized (this.f15438b) {
                if (this.f15440d == null) {
                    this.f15440d = context.getApplicationContext();
                    if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmz)).booleanValue()) {
                        m3087a();
                    } else {
                        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmy)).booleanValue()) {
                            zzq.zzkt().zza(new aqd(this));
                        }
                    }
                }
            }
        }
    }

    public final zzrx zza(zzry zzryVar) {
        synchronized (this.f15438b) {
            if (this.f15441e == null) {
                return new zzrx();
            }
            try {
                return this.f15441e.zza(zzryVar);
            } catch (RemoteException e) {
                zzavs.zzc("Unable to call into cache service.", e);
                return new zzrx();
            }
        }
    }

    public final void zzmo() {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcna)).booleanValue()) {
            synchronized (this.f15438b) {
                m3087a();
                zzq.zzkq();
                zzawb.zzdsr.removeCallbacks(this.f15437a);
                zzq.zzkq();
                zzawb.zzdsr.postDelayed(this.f15437a, ((Long) zzve.zzoy().zzd(zzzn.zzcnb)).longValue());
            }
        }
    }
}
