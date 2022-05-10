package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzj.class */
public final class zzj extends zzb implements zzk {
    public zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: a */
    public final int mo16977a(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        zzd.m10514a(W, z);
        Parcel a = m10521a(5, W);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: a */
    public final IObjectWrapper mo16978a(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        W.writeInt(i);
        Parcel a = m10521a(2, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: b */
    public final int mo16975b(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        zzd.m10514a(W, z);
        Parcel a = m10521a(3, W);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: b */
    public final IObjectWrapper mo16976b(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        W.writeInt(i);
        Parcel a = m10521a(4, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.dynamite.zzk
    public final int zzb() throws RemoteException {
        Parcel a = m10521a(6, m10522W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
