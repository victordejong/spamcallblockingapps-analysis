package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadx.class */
public final class zzadx extends NativeAd.AdChoicesInfo {

    /* renamed from: a */
    public final zzadw f24047a;

    /* renamed from: b */
    public final List<NativeAd.Image> f24048b = new ArrayList();

    public zzadx(zzadw zzadwVar) {
        zzaee zzaeeVar;
        IBinder iBinder;
        this.f24047a = zzadwVar;
        try {
            zzadwVar.mo16841A0();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
        try {
            for (zzaee zzaeeVar2 : zzadwVar.mo16840W0()) {
                if (!(zzaeeVar2 instanceof IBinder) || (iBinder = (IBinder) zzaeeVar2) == null) {
                    zzaeeVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(iBinder);
                }
                if (zzaeeVar != null) {
                    this.f24048b.add(new zzaef(zzaeeVar));
                }
            }
        } catch (RemoteException e2) {
            zzbbq.m15855b("", e2);
        }
    }
}
