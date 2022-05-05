package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasw.class */
public final class zzasw {
    public static zzasg zzd(Context context, String str, zzalc zzalcVar) {
        try {
            IBinder zzd = ((zzasm) zzayx.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", C1821dm.f8391a)).zzd(ObjectWrapper.wrap(context), str, zzalcVar, 19649000);
            if (zzd == null) {
                return null;
            }
            IInterface queryLocalInterface = zzd.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzasg ? (zzasg) queryLocalInterface : new zzasi(zzd);
        } catch (RemoteException | zzayz e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
