package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcos.class */
public final class zzcos implements AppEventListener {

    /* renamed from: a */
    private zzwc f13482a;

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        synchronized (this) {
            if (this.f13482a != null) {
                try {
                    this.f13482a.onAppEvent(str, str2);
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAppEvent.", e);
                }
            }
        }
    }

    public final zzwc zzamq() {
        zzwc zzwcVar;
        synchronized (this) {
            zzwcVar = this.f13482a;
        }
        return zzwcVar;
    }

    public final void zzb(zzwc zzwcVar) {
        synchronized (this) {
            this.f13482a = zzwcVar;
        }
    }
}
