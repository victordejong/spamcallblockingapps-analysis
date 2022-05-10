package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarv.class */
public final class zzarv extends zzgu implements zzart {
    public zzarv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzart
    /* renamed from: b */
    public final void mo16392b(List<Uri> list) throws RemoteException {
        Parcel W = m12086W();
        W.writeTypedList(list);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzart
    /* renamed from: h */
    public final void mo16391h(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(2, W);
    }
}
