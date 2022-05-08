package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzach.class */
public abstract class zzach extends zzgb implements zzaci {
    public zzach() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzaci zzm(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof zzaci ? (zzaci) queryLocalInterface : new zzack(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        int i2;
        if (i == 1) {
            IObjectWrapper zzrc = zzrc();
            parcel2.writeNoException();
            zzge.zza(parcel2, zzrc);
            return true;
        } else if (i == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            zzge.zzb(parcel2, uri);
            return true;
        } else if (i != 3) {
            if (i == 4) {
                i2 = getWidth();
            } else if (i != 5) {
                return false;
            } else {
                i2 = getHeight();
            }
            parcel2.writeNoException();
            parcel2.writeInt(i2);
            return true;
        } else {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
            return true;
        }
    }
}
