package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper.class */
public interface IFragmentWrapper extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub.class */
    public static abstract class Stub extends com.google.android.gms.internal.common.zza implements IFragmentWrapper {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub$zza.class */
        public static final class zza extends zzb implements IFragmentWrapper {
            public zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IFragmentWrapper");
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: B */
            public final boolean mo17018B() throws RemoteException {
                Parcel a = m10521a(14, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: E */
            public final IObjectWrapper mo17017E() throws RemoteException {
                Parcel a = m10521a(12, m10522W());
                IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: F */
            public final IFragmentWrapper mo17016F() throws RemoteException {
                Parcel a = m10521a(9, m10522W());
                IFragmentWrapper a2 = Stub.m17023a(a.readStrongBinder());
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: I */
            public final int mo17015I() throws RemoteException {
                Parcel a = m10521a(10, m10522W());
                int readInt = a.readInt();
                a.recycle();
                return readInt;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: K */
            public final boolean mo17014K() throws RemoteException {
                Parcel a = m10521a(7, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: L */
            public final String mo17013L() throws RemoteException {
                Parcel a = m10521a(8, m10522W());
                String readString = a.readString();
                a.recycle();
                return readString;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: T */
            public final boolean mo17012T() throws RemoteException {
                Parcel a = m10521a(11, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: a */
            public final void mo17011a(Intent intent) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10515a(W, intent);
                m10520b(25, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: a */
            public final void mo17010a(Intent intent, int i) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10515a(W, intent);
                W.writeInt(i);
                m10520b(26, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: b */
            public final void mo17008b(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10517a(W, iObjectWrapper);
                m10520b(20, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: b */
            public final void mo17007b(boolean z) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10514a(W, z);
                m10520b(22, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: c */
            public final IObjectWrapper mo17006c() throws RemoteException {
                Parcel a = m10521a(6, m10522W());
                IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: c */
            public final void mo17005c(boolean z) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10514a(W, z);
                m10520b(21, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: e */
            public final void mo17004e(boolean z) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10514a(W, z);
                m10520b(24, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: f */
            public final void mo17003f(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10517a(W, iObjectWrapper);
                m10520b(27, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: j */
            public final void mo17001j(boolean z) throws RemoteException {
                Parcel W = m10522W();
                zzd.m10514a(W, z);
                m10520b(23, W);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: j */
            public final boolean mo17002j() throws RemoteException {
                Parcel a = m10521a(17, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: p */
            public final boolean mo17000p() throws RemoteException {
                Parcel a = m10521a(18, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: r */
            public final boolean mo16999r() throws RemoteException {
                Parcel a = m10521a(19, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: u */
            public final boolean mo16998u() throws RemoteException {
                Parcel a = m10521a(15, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: w */
            public final boolean mo16997w() throws RemoteException {
                Parcel a = m10521a(16, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: z */
            public final boolean mo16996z() throws RemoteException {
                Parcel a = m10521a(13, m10522W());
                boolean a2 = zzd.m10518a(a);
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IObjectWrapper zza() throws RemoteException {
                Parcel a = m10521a(2, m10522W());
                IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
                a.recycle();
                return a2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final Bundle zzb() throws RemoteException {
                Parcel a = m10521a(3, m10522W());
                Bundle bundle = (Bundle) zzd.m10516a(a, Bundle.CREATOR);
                a.recycle();
                return bundle;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final int zzc() throws RemoteException {
                Parcel a = m10521a(4, m10522W());
                int readInt = a.readInt();
                a.recycle();
                return readInt;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final IFragmentWrapper zzd() throws RemoteException {
                Parcel a = m10521a(5, m10522W());
                IFragmentWrapper a2 = Stub.m17023a(a.readStrongBinder());
                a.recycle();
                return a2;
            }
        }

        public Stub() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        /* renamed from: a */
        public static IFragmentWrapper m17023a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return queryLocalInterface instanceof IFragmentWrapper ? (IFragmentWrapper) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zza
        /* renamed from: a */
        public final boolean mo10523a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    IObjectWrapper zza2 = zza();
                    parcel2.writeNoException();
                    zzd.m10517a(parcel2, zza2);
                    return true;
                case 3:
                    Bundle zzb = zzb();
                    parcel2.writeNoException();
                    zzd.m10513b(parcel2, zzb);
                    return true;
                case 4:
                    int zzc = zzc();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzc);
                    return true;
                case 5:
                    IFragmentWrapper zzd = zzd();
                    parcel2.writeNoException();
                    zzd.m10517a(parcel2, zzd);
                    return true;
                case 6:
                    IObjectWrapper c = mo17006c();
                    parcel2.writeNoException();
                    zzd.m10517a(parcel2, c);
                    return true;
                case 7:
                    boolean K = mo17014K();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, K);
                    return true;
                case 8:
                    String L = mo17013L();
                    parcel2.writeNoException();
                    parcel2.writeString(L);
                    return true;
                case 9:
                    IFragmentWrapper F = mo17016F();
                    parcel2.writeNoException();
                    zzd.m10517a(parcel2, F);
                    return true;
                case 10:
                    int I = mo17015I();
                    parcel2.writeNoException();
                    parcel2.writeInt(I);
                    return true;
                case 11:
                    boolean T = mo17012T();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, T);
                    return true;
                case 12:
                    IObjectWrapper E = mo17017E();
                    parcel2.writeNoException();
                    zzd.m10517a(parcel2, E);
                    return true;
                case 13:
                    boolean z = mo16996z();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, z);
                    return true;
                case 14:
                    boolean B = mo17018B();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, B);
                    return true;
                case 15:
                    boolean u = mo16998u();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, u);
                    return true;
                case 16:
                    boolean w = mo16997w();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, w);
                    return true;
                case 17:
                    boolean j = mo17002j();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, j);
                    return true;
                case 18:
                    boolean p = mo17000p();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, p);
                    return true;
                case 19:
                    boolean r = mo16999r();
                    parcel2.writeNoException();
                    zzd.m10514a(parcel2, r);
                    return true;
                case 20:
                    mo17008b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    mo17005c(zzd.m10518a(parcel));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    mo17007b(zzd.m10518a(parcel));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    mo17001j(zzd.m10518a(parcel));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    mo17004e(zzd.m10518a(parcel));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    mo17011a((Intent) zzd.m10516a(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    mo17010a((Intent) zzd.m10516a(parcel, Intent.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    mo17003f(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* renamed from: B */
    boolean mo17018B() throws RemoteException;

    /* renamed from: E */
    IObjectWrapper mo17017E() throws RemoteException;

    /* renamed from: F */
    IFragmentWrapper mo17016F() throws RemoteException;

    /* renamed from: I */
    int mo17015I() throws RemoteException;

    /* renamed from: K */
    boolean mo17014K() throws RemoteException;

    /* renamed from: L */
    String mo17013L() throws RemoteException;

    /* renamed from: T */
    boolean mo17012T() throws RemoteException;

    /* renamed from: a */
    void mo17011a(Intent intent) throws RemoteException;

    /* renamed from: a */
    void mo17010a(Intent intent, int i) throws RemoteException;

    /* renamed from: b */
    void mo17008b(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: b */
    void mo17007b(boolean z) throws RemoteException;

    /* renamed from: c */
    IObjectWrapper mo17006c() throws RemoteException;

    /* renamed from: c */
    void mo17005c(boolean z) throws RemoteException;

    /* renamed from: e */
    void mo17004e(boolean z) throws RemoteException;

    /* renamed from: f */
    void mo17003f(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: j */
    void mo17001j(boolean z) throws RemoteException;

    /* renamed from: j */
    boolean mo17002j() throws RemoteException;

    /* renamed from: p */
    boolean mo17000p() throws RemoteException;

    /* renamed from: r */
    boolean mo16999r() throws RemoteException;

    /* renamed from: u */
    boolean mo16998u() throws RemoteException;

    /* renamed from: w */
    boolean mo16997w() throws RemoteException;

    /* renamed from: z */
    boolean mo16996z() throws RemoteException;

    IObjectWrapper zza() throws RemoteException;

    Bundle zzb() throws RemoteException;

    int zzc() throws RemoteException;

    IFragmentWrapper zzd() throws RemoteException;
}
