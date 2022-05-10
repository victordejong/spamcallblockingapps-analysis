package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxn.class */
public final class zzaxn extends zzgu implements zzaxl {
    public zzaxn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13686a(IObjectWrapper iObjectWrapper, zzaxr zzaxrVar, zzaxg zzaxgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzaxrVar);
        zzgw.m12081a(W, zzaxgVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13685a(zzasa zzasaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzasaVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13680a(List<Uri> list, IObjectWrapper iObjectWrapper, zzart zzartVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeTypedList(list);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzartVar);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: b */
    public final void mo13673b(List<Uri> list, IObjectWrapper iObjectWrapper, zzart zzartVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeTypedList(list);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzartVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: c */
    public final IObjectWrapper mo13672c(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        Parcel a = m12085a(3, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: g */
    public final IObjectWrapper mo13671g(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(4, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: s */
    public final void mo13670s(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(2, W);
    }
}
