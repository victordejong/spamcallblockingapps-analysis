package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzack.class */
public final class zzack extends zzgc implements zzaci {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzack(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final int getHeight() {
        Parcel a = m3258a(5, m3259a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final double getScale() {
        Parcel a = m3258a(3, m3259a());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final Uri getUri() {
        Parcel a = m3258a(2, m3259a());
        Uri uri = (Uri) zzge.zza(a, Uri.CREATOR);
        a.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final int getWidth() {
        Parcel a = m3258a(4, m3259a());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final IObjectWrapper zzrc() {
        Parcel a = m3258a(1, m3259a());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a.readStrongBinder());
        a.recycle();
        return asInterface;
    }
}
