package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahe.class */
public abstract class zzahe extends zzgb implements zzahb {
    public zzahe() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        zzahg zzahgVar;
        if (i != 3) {
            if (i == 4) {
                destroy();
            } else if (i == 5) {
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzahgVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                    zzahgVar = queryLocalInterface instanceof zzahg ? (zzahg) queryLocalInterface : new zzahi(readStrongBinder);
                }
                zza(asInterface, zzahgVar);
            } else if (i != 6) {
                return false;
            } else {
                zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            }
            parcel2.writeNoException();
            return true;
        }
        zzxb videoController = getVideoController();
        parcel2.writeNoException();
        zzge.zza(parcel2, videoController);
        return true;
    }
}
