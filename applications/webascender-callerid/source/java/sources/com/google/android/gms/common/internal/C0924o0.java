package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.o0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o0.class */
public final class C0924o0 implements Parcelable.Creator<g> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        d[] dVarArr = null;
        d[] dVarArr2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    i2 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 3:
                    i3 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 4:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m3282s(parcel, m3283r);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m3294g(parcel, m3283r, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m3300a(parcel, m3283r);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m3298c(parcel, m3283r, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
                case 10:
                    dVarArr = (d[]) SafeParcelReader.m3294g(parcel, m3283r, d.CREATOR);
                    break;
                case 11:
                    dVarArr2 = (d[]) SafeParcelReader.m3294g(parcel, m3283r, d.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 13:
                    i4 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new g(i, i2, i3, str, iBinder, scopeArr, bundle, account, dVarArr, dVarArr2, z, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g[] newArray(int i) {
        return new g[i];
    }
}
