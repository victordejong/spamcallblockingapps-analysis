package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgi.class */
public final class zzcgi extends zzcgk {
    public zzcgi(Context context) {
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
                    this.f13116f.zztx().zza(this.f13115e, new zzcgj(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    zzazlVar = this.f13111a;
                    zzcgrVar = new zzcgr(0);
                    zzazlVar.setException(zzcgrVar);
                } catch (Throwable th) {
                    zzq.zzku().zza(th, "RemoteAdRequestClientTask.onConnected");
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

    public final zzdhe<InputStream> zzf(zzaqk zzaqkVar) {
        synchronized (this.f13112b) {
            if (this.f13113c) {
                return this.f13111a;
            }
            this.f13113c = true;
            this.f13115e = zzaqkVar;
            this.f13116f.checkAvailabilityAndConnect();
            this.f13111a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rs

                /* renamed from: a */
                private final zzcgi f10431a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10431a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10431a.m3779a();
                }
            }, zzazd.zzdwj);
            return this.f13111a;
        }
    }
}
