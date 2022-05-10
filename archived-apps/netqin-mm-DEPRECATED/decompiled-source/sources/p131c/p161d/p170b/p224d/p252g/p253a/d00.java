package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzduk;
import com.google.android.gms.internal.ads.zzdun;
import com.google.android.gms.internal.ads.zzdut;
import com.google.android.gms.internal.ads.zzduv;
import com.google.android.gms.internal.ads.zzgo;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.d00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d00.class */
public final class d00 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting

    /* renamed from: a */
    public zzduk f12591a;

    /* renamed from: b */
    public final String f12592b;

    /* renamed from: c */
    public final String f12593c;

    /* renamed from: d */
    public final zzgo f12594d;

    /* renamed from: g */
    public final HandlerThread f12597g;

    /* renamed from: h */
    public final zzdtc f12598h;

    /* renamed from: e */
    public final int f12595e = 1;

    /* renamed from: i */
    public final long f12599i = System.currentTimeMillis();

    /* renamed from: f */
    public final LinkedBlockingQueue<zzduv> f12596f = new LinkedBlockingQueue<>();

    public d00(Context context, int i, zzgo zzgoVar, String str, String str2, String str3, zzdtc zzdtcVar) {
        this.f12592b = str;
        this.f12594d = zzgoVar;
        this.f12593c = str2;
        this.f12598h = zzdtcVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f12597g = handlerThread;
        handlerThread.start();
        this.f12591a = new zzduk(context, this.f12597g.getLooper(), this, this, 19621000);
        this.f12591a.m17350p();
    }

    @VisibleForTesting
    /* renamed from: c */
    public static zzduv m27086c() {
        return new zzduv(null, 1);
    }

    /* renamed from: a */
    public final zzduv m27089a(int i) {
        zzduv zzduvVar;
        try {
            zzduvVar = this.f12596f.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m27088a(AdError.INTERSTITIAL_AD_TIMEOUT, this.f12599i, e);
            zzduvVar = null;
        }
        m27088a(3004, this.f12599i, null);
        if (zzduvVar != null) {
            if (zzduvVar.f27862c == 7) {
                zzdtc.m13214a(zzbw.zza.zzc.DISABLED);
            } else {
                zzdtc.m13214a(zzbw.zza.zzc.ENABLED);
            }
        }
        return zzduvVar == null ? m27086c() : zzduvVar;
    }

    /* renamed from: a */
    public final void m27090a() {
        zzduk zzdukVar = this.f12591a;
        if (zzdukVar == null) {
            return;
        }
        if (zzdukVar.m17365c() || this.f12591a.m17358g()) {
            this.f12591a.mo10491b();
        }
    }

    /* renamed from: a */
    public final void m27088a(int i, long j, Exception exc) {
        zzdtc zzdtcVar = this.f12598h;
        if (zzdtcVar != null) {
            zzdtcVar.m13221a(i, System.currentTimeMillis() - j, exc);
        }
    }

    /* renamed from: b */
    public final zzdun m27087b() {
        try {
            return this.f12591a.m13160H();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzdun b = m27087b();
        if (b != null) {
            try {
                zzduv a = b.mo13155a(new zzdut(this.f12595e, this.f12594d, this.f12592b, this.f12593c));
                m27088a(5011, this.f12599i, null);
                this.f12596f.put(a);
            } catch (Throwable th) {
                try {
                    m27088a(2010, this.f12599i, new Exception(th));
                } finally {
                    m27090a();
                    this.f12597g.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            m27088a(4012, this.f12599i, null);
            this.f12596f.put(m27086c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            m27088a(4011, this.f12599i, null);
            this.f12596f.put(m27086c());
        } catch (InterruptedException e) {
        }
    }
}
