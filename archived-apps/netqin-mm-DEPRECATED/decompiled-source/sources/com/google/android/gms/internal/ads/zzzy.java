package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzavg;
import com.google.android.gms.internal.ads.zzbbq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzy.class */
public final class zzzy extends zzavb {
    /* renamed from: a */
    public static void m10906a(final zzavg zzavgVar) {
        zzbbq.m15856b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzbbg.f24738b.post(new Runnable(zzavgVar) { // from class: c.d.b.d.g.a.mi0

            /* renamed from: a */
            public final zzavg f14177a;

            {
                this.f14177a = zzavgVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzavg zzavgVar2 = this.f14177a;
                if (zzavgVar2 != null) {
                    try {
                        zzavgVar2.mo16284l(1);
                    } catch (RemoteException e) {
                        zzbbq.m15851d("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: G */
    public final Bundle mo10911G() throws RemoteException {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: R1 */
    public final zzaux mo10910R1() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final String mo10909a() throws RemoteException {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10908a(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10907a(zzavd zzavdVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10905a(zzavl zzavlVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10904a(zzavt zzavtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10903a(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        m10906a(zzavgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10902a(zzyh zzyhVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10901a(zzyi zzyiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: b */
    public final void mo10900b(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        m10906a(zzavgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final boolean isLoaded() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: l */
    public final zzyn mo10899l() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: m */
    public final void mo10898m(IObjectWrapper iObjectWrapper) throws RemoteException {
    }
}
