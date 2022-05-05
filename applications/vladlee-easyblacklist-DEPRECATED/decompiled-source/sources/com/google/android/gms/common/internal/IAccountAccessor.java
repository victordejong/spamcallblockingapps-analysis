package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
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
            public final Account getAccount() {
                Parcel a = m2930a(2, m2931a());
                Account account = (Account) zzc.zza(a, Account.CREATOR);
                a.recycle();
                return account;
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        public static IAccountAccessor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        /* renamed from: a */
        protected final boolean mo2927a(int i, Parcel parcel, Parcel parcel2) {
            if (i != 2) {
                return false;
            }
            Account account = getAccount();
            parcel2.writeNoException();
            zzc.zzb(parcel2, account);
            return true;
        }
    }

    Account getAccount();
}
