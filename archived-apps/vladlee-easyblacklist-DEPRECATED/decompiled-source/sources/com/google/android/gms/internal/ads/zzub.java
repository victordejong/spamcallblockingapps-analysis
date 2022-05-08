package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzub.class */
public final class zzub extends RemoteCreator<zzvs> {
    public zzub() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzvs getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzvs ? (zzvs) queryLocalInterface : new zzvr(iBinder);
    }

    public final zzvn zza(Context context, String str, zzalc zzalcVar) {
        try {
            IBinder zzc = m5542a(context).zzc(ObjectWrapper.wrap(context), str, zzalcVar, 19649000);
            if (zzc == null) {
                return null;
            }
            IInterface queryLocalInterface = zzc.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzvn ? (zzvn) queryLocalInterface : new zzvp(zzc);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzayu.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
