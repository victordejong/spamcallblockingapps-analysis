package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzady.class */
public final class zzady extends zzgu implements zzadw {
    public zzady(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzadw
    /* renamed from: A0 */
    public final String mo16841A0() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzadw
    /* renamed from: W0 */
    public final List<zzaee> mo16840W0() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }
}
