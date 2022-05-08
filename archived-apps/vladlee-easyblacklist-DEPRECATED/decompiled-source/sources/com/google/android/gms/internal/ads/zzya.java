package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzya.class */
public final class zzya extends RemoteCreator<zzwl> {
    public zzya() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzwl getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof zzwl ? (zzwl) queryLocalInterface : new zzwo(iBinder);
    }

    public final zzwk zzi(Context context) {
        try {
            IBinder zzb = m5542a(context).zzb(ObjectWrapper.wrap(context), 19649000);
            if (zzb == null) {
                return null;
            }
            IInterface queryLocalInterface = zzb.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzwk ? (zzwk) queryLocalInterface : new zzwm(zzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzayu.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
