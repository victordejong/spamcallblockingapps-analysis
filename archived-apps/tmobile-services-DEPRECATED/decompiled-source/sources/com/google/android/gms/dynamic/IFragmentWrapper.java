package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper.class */
public interface IFragmentWrapper extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub.class */
    public static abstract class Stub extends zzb implements IFragmentWrapper {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements IFragmentWrapper {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IFragmentWrapper");
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: B */
            public final boolean mo14254B() throws RemoteException {
                Parcel b = m14097b(14, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: F */
            public final boolean mo14253F() throws RemoteException {
                Parcel b = m14097b(7, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: N0 */
            public final void mo14252N0(boolean z) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14093a(a, z);
                m14096c(23, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: Y */
            public final boolean mo14251Y() throws RemoteException {
                Parcel b = m14097b(16, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: e */
            public final IFragmentWrapper mo14249e() throws RemoteException {
                Parcel b = m14097b(5, m14098a());
                IFragmentWrapper b2 = Stub.m14260b(b.readStrongBinder());
                b.recycle();
                return b2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: g0 */
            public final void mo14248g0(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14091c(a, iObjectWrapper);
                m14096c(27, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final int getId() throws RemoteException {
                Parcel b = m14097b(4, m14098a());
                int readInt = b.readInt();
                b.recycle();
                return readInt;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final String getTag() throws RemoteException {
                Parcel b = m14097b(8, m14098a());
                String readString = b.readString();
                b.recycle();
                return readString;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final boolean isVisible() throws RemoteException {
                Parcel b = m14097b(19, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: j */
            public final IObjectWrapper mo14247j() throws RemoteException {
                Parcel b = m14097b(6, m14098a());
                IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
                b.recycle();
                return b2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: j0 */
            public final boolean mo14246j0() throws RemoteException {
                Parcel b = m14097b(17, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: k0 */
            public final boolean mo14245k0() throws RemoteException {
                Parcel b = m14097b(18, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: l */
            public final IFragmentWrapper mo14244l() throws RemoteException {
                Parcel b = m14097b(9, m14098a());
                IFragmentWrapper b2 = Stub.m14260b(b.readStrongBinder());
                b.recycle();
                return b2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: n0 */
            public final boolean mo14243n0() throws RemoteException {
                Parcel b = m14097b(13, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: o */
            public final IObjectWrapper mo14242o() throws RemoteException {
                Parcel b = m14097b(2, m14098a());
                IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
                b.recycle();
                return b2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: p */
            public final Bundle mo14241p() throws RemoteException {
                Parcel b = m14097b(3, m14098a());
                Bundle bundle = (Bundle) zzc.m14092b(b, Bundle.CREATOR);
                b.recycle();
                return bundle;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: q */
            public final IObjectWrapper mo14240q() throws RemoteException {
                Parcel b = m14097b(12, m14098a());
                IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
                b.recycle();
                return b2;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: r */
            public final boolean mo14239r() throws RemoteException {
                Parcel b = m14097b(15, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: s */
            public final void mo14238s(boolean z) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14093a(a, z);
                m14096c(21, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            public final void startActivityForResult(Intent intent, int i) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14090d(a, intent);
                a.writeInt(i);
                m14096c(26, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: t */
            public final boolean mo14237t() throws RemoteException {
                Parcel b = m14097b(11, m14098a());
                boolean e = zzc.m14089e(b);
                b.recycle();
                return e;
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: u */
            public final void mo14236u(boolean z) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14093a(a, z);
                m14096c(24, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: v */
            public final void mo14235v(Intent intent) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14090d(a, intent);
                m14096c(25, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: w */
            public final void mo14234w(boolean z) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14093a(a, z);
                m14096c(22, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: x0 */
            public final void mo14233x0(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel a = m14098a();
                zzc.m14091c(a, iObjectWrapper);
                m14096c(20, a);
            }

            @Override // com.google.android.gms.dynamic.IFragmentWrapper
            /* renamed from: y0 */
            public final int mo14232y0() throws RemoteException {
                Parcel b = m14097b(10, m14098a());
                int readInt = b.readInt();
                b.recycle();
                return readInt;
            }
        }

        public Stub() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        /* renamed from: b */
        public static IFragmentWrapper m14260b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
            return queryLocalInterface instanceof IFragmentWrapper ? (IFragmentWrapper) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        /* renamed from: a */
        protected final boolean mo14094a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    IObjectWrapper o = mo14242o();
                    parcel2.writeNoException();
                    zzc.m14091c(parcel2, o);
                    return true;
                case 3:
                    Bundle p = mo14241p();
                    parcel2.writeNoException();
                    zzc.m14088f(parcel2, p);
                    return true;
                case 4:
                    int id = getId();
                    parcel2.writeNoException();
                    parcel2.writeInt(id);
                    return true;
                case 5:
                    IFragmentWrapper e = mo14249e();
                    parcel2.writeNoException();
                    zzc.m14091c(parcel2, e);
                    return true;
                case 6:
                    IObjectWrapper j = mo14247j();
                    parcel2.writeNoException();
                    zzc.m14091c(parcel2, j);
                    return true;
                case 7:
                    boolean F = mo14253F();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, F);
                    return true;
                case 8:
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    return true;
                case 9:
                    IFragmentWrapper l = mo14244l();
                    parcel2.writeNoException();
                    zzc.m14091c(parcel2, l);
                    return true;
                case 10:
                    int y0 = mo14232y0();
                    parcel2.writeNoException();
                    parcel2.writeInt(y0);
                    return true;
                case 11:
                    boolean t = mo14237t();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, t);
                    return true;
                case 12:
                    IObjectWrapper q = mo14240q();
                    parcel2.writeNoException();
                    zzc.m14091c(parcel2, q);
                    return true;
                case 13:
                    boolean n0 = mo14243n0();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, n0);
                    return true;
                case 14:
                    boolean B = mo14254B();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, B);
                    return true;
                case 15:
                    boolean r = mo14239r();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, r);
                    return true;
                case 16:
                    boolean Y = mo14251Y();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, Y);
                    return true;
                case 17:
                    boolean j0 = mo14246j0();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, j0);
                    return true;
                case 18:
                    boolean k0 = mo14245k0();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, k0);
                    return true;
                case 19:
                    boolean isVisible = isVisible();
                    parcel2.writeNoException();
                    zzc.m14093a(parcel2, isVisible);
                    return true;
                case 20:
                    mo14233x0(IObjectWrapper.Stub.m14259b(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    mo14238s(zzc.m14089e(parcel));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    mo14234w(zzc.m14089e(parcel));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    mo14252N0(zzc.m14089e(parcel));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    mo14236u(zzc.m14089e(parcel));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    mo14235v((Intent) zzc.m14092b(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    startActivityForResult((Intent) zzc.m14092b(parcel, Intent.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    mo14248g0(IObjectWrapper.Stub.m14259b(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* renamed from: B */
    boolean mo14254B() throws RemoteException;

    /* renamed from: F */
    boolean mo14253F() throws RemoteException;

    /* renamed from: N0 */
    void mo14252N0(boolean z) throws RemoteException;

    /* renamed from: Y */
    boolean mo14251Y() throws RemoteException;

    /* renamed from: e */
    IFragmentWrapper mo14249e() throws RemoteException;

    /* renamed from: g0 */
    void mo14248g0(IObjectWrapper iObjectWrapper) throws RemoteException;

    int getId() throws RemoteException;

    String getTag() throws RemoteException;

    boolean isVisible() throws RemoteException;

    /* renamed from: j */
    IObjectWrapper mo14247j() throws RemoteException;

    /* renamed from: j0 */
    boolean mo14246j0() throws RemoteException;

    /* renamed from: k0 */
    boolean mo14245k0() throws RemoteException;

    /* renamed from: l */
    IFragmentWrapper mo14244l() throws RemoteException;

    /* renamed from: n0 */
    boolean mo14243n0() throws RemoteException;

    /* renamed from: o */
    IObjectWrapper mo14242o() throws RemoteException;

    /* renamed from: p */
    Bundle mo14241p() throws RemoteException;

    /* renamed from: q */
    IObjectWrapper mo14240q() throws RemoteException;

    /* renamed from: r */
    boolean mo14239r() throws RemoteException;

    /* renamed from: s */
    void mo14238s(boolean z) throws RemoteException;

    void startActivityForResult(Intent intent, int i) throws RemoteException;

    /* renamed from: t */
    boolean mo14237t() throws RemoteException;

    /* renamed from: u */
    void mo14236u(boolean z) throws RemoteException;

    /* renamed from: v */
    void mo14235v(Intent intent) throws RemoteException;

    /* renamed from: w */
    void mo14234w(boolean z) throws RemoteException;

    /* renamed from: x0 */
    void mo14233x0(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: y0 */
    int mo14232y0() throws RemoteException;
}
