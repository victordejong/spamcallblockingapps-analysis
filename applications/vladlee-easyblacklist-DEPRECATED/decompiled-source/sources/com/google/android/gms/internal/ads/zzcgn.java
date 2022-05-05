package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgn.class */
public final class zzcgn extends zzcgk {

    /* renamed from: g */
    private int f13117g = C2208rv.f10435a;

    public zzcgn(Context context) {
        this.f13116f = new zzaps(context, zzq.zzle().zzxb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzazl<InputStream> zzazlVar;
        zzcgr zzcgrVar;
        synchronized (this.f13112b) {
            if (!this.f13114d) {
                this.f13114d = true;
                try {
                    if (this.f13117g == C2208rv.f10436b) {
                        this.f13116f.zztx().zzc(this.f13115e, new zzcgj(this));
                    } else if (this.f13117g == C2208rv.f10437c) {
                        this.f13116f.zztx().zza((String) null, new zzcgj(this));
                    } else {
                        this.f13111a.setException(new zzcgr(0));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    zzazlVar = this.f13111a;
                    zzcgrVar = new zzcgr(0);
                    zzazlVar.setException(zzcgrVar);
                } catch (Throwable th) {
                    zzq.zzku().zza(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    zzazlVar = this.f13111a;
                    zzcgrVar = new zzcgr(0);
                    zzazlVar.setException(zzcgrVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgk, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzavs.zzea("Cannot connect to remote service, fallback to local instance.");
        this.f13111a.setException(new zzcgr(0));
    }
}
