package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzq;
import java.io.InputStream;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzse.class */
public final class zzse {

    /* renamed from: a */
    private zzrz f15450a;

    /* renamed from: b */
    private boolean f15451b;

    /* renamed from: c */
    private final Context f15452c;

    /* renamed from: d */
    private final Object f15453d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzse(Context context) {
        this.f15452c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3077a(zzse zzseVar) {
        synchronized (zzseVar.f15453d) {
            if (zzseVar.f15450a != null) {
                zzseVar.f15450a.disconnect();
                zzseVar.f15450a = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Future<InputStream> m3078a(zzry zzryVar) {
        aqj aqjVar = new aqj(this);
        aqi aqiVar = new aqi(this, zzryVar, aqjVar);
        aqm aqmVar = new aqm(this, aqjVar);
        synchronized (this.f15453d) {
            this.f15450a = new zzrz(this.f15452c, zzq.zzle().zzxb(), aqiVar, aqmVar);
            this.f15450a.checkAvailabilityAndConnect();
        }
        return aqjVar;
    }
}
