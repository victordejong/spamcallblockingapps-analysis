package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxu.class */
public final class zzxu extends zzgu implements zzxs {
    public zzxu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: J1 */
    public final void mo10937J1() throws RemoteException {
        m12084b(15, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: S1 */
    public final List<zzaiq> mo10935S1() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        ArrayList createTypedArrayList = a.createTypedArrayList(zzaiq.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10934a(float f) throws RemoteException {
        Parcel W = m12086W();
        W.writeFloat(f);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10933a(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10932a(zzaae zzaaeVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzaaeVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10931a(zzait zzaitVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaitVar);
        m12084b(12, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: a */
    public final void mo10930a(zzanb zzanbVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzanbVar);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b */
    public final void mo10929b(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: b2 */
    public final boolean mo10928b2() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: g */
    public final void mo10927g(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void initialize() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: n1 */
    public final String mo10926n1() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: p */
    public final void mo10925p(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: q */
    public final void mo10924q(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    /* renamed from: y0 */
    public final float mo10923y0() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }
}
