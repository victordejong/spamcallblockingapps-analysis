package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaor.class */
public final class zzaor extends RemoteCreator<zzaou> {
    public zzaor() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzaou getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzaou ? (zzaou) queryLocalInterface : new zzaox(iBinder);
    }

    public final zzaot zzc(Activity activity) {
        try {
            IBinder zzae = m5542a(activity).zzae(ObjectWrapper.wrap(activity));
            if (zzae == null) {
                return null;
            }
            IInterface queryLocalInterface = zzae.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzaot ? (zzaot) queryLocalInterface : new zzaov(zzae);
        } catch (RemoteException e) {
            zzayu.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzayu.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
