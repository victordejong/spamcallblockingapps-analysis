package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor.class */
public interface IAccountAccessor extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub.class */
    public static abstract class Stub extends com.google.android.gms.internal.common.zza implements IAccountAccessor {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub$zza.class */
        public static final class zza extends zzb implements IAccountAccessor {
            public zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.IAccountAccessor
            public final Account zza() throws RemoteException {
                Parcel a = m10521a(2, m10522W());
                Account account = (Account) zzd.m10516a(a, Account.CREATOR);
                a.recycle();
                return account;
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        /* renamed from: a */
        public static IAccountAccessor m17298a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zza
        /* renamed from: a */
        public final boolean mo10523a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account zza2 = zza();
            parcel2.writeNoException();
            zzd.m10513b(parcel2, zza2);
            return true;
        }
    }

    Account zza() throws RemoteException;
}
