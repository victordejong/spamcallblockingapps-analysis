package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor.class */
public interface IAccountAccessor extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub.class */
    public static abstract class Stub extends zzb implements IAccountAccessor {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.IAccountAccessor
            /* renamed from: d */
            public final Account mo14540d() throws RemoteException {
                Parcel b = m14097b(2, m14098a());
                Account account = (Account) zzc.m14092b(b, Account.CREATOR);
                b.recycle();
                return account;
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        /* renamed from: b */
        public static IAccountAccessor m14541b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        /* renamed from: a */
        protected final boolean mo14094a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account d = mo14540d();
            parcel2.writeNoException();
            zzc.m14088f(parcel2, d);
            return true;
        }
    }

    /* renamed from: d */
    Account mo14540d() throws RemoteException;
}
