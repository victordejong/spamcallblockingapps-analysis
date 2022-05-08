package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaem.class */
public final class zzaem extends RemoteCreator<zzacu> {
    public zzaem() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzacu getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof zzacu ? (zzacu) queryLocalInterface : new zzact(iBinder);
    }

    public final zzacp zzb(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder zzb = m5542a(view.getContext()).zzb(ObjectWrapper.wrap(view), ObjectWrapper.wrap(hashMap), ObjectWrapper.wrap(hashMap2));
            if (zzb == null) {
                return null;
            }
            IInterface queryLocalInterface = zzb.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof zzacp ? (zzacp) queryLocalInterface : new zzacr(zzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzayu.zzd("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
