package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxe.class */
public abstract class zzxe extends zzgb implements zzxb {
    public zzxe() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzxb zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof zzxb ? (zzxb) queryLocalInterface : new zzxd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        float f;
        zzxg zzxgVar;
        switch (i) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(zzge.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                z = isMuted();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                f = zzpk();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 7:
                f = zzpl();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzxgVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    zzxgVar = queryLocalInterface instanceof zzxg ? (zzxg) queryLocalInterface : new zzxi(readStrongBinder);
                }
                zza(zzxgVar);
                parcel2.writeNoException();
                return true;
            case 9:
                f = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 10:
                z = isCustomControlsEnabled();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 11:
                zzxg zzpm = zzpm();
                parcel2.writeNoException();
                zzge.zza(parcel2, zzpm);
                return true;
            case 12:
                z = isClickToExpandEnabled();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 13:
                stop();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
