package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzue.class */
public final class zzue extends RemoteCreator<zzvv> {
    public zzue() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzvv getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzvv ? (zzvv) queryLocalInterface : new zzvy(iBinder);
    }

    public final zzvu zza(Context context, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        try {
            IBinder zza = m5542a(context).zza(ObjectWrapper.wrap(context), zzujVar, str, zzalcVar, 19649000, i);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof zzvu ? (zzvu) queryLocalInterface : new zzvw(zza);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzayu.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }
}
