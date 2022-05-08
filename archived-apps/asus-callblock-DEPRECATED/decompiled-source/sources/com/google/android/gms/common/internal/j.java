package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j.class */
public final class j implements Parcelable.Creator<AuthAccountRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(AuthAccountRequest authAccountRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, authAccountRequest.f3981a);
        b.a(parcel, 2, authAccountRequest.f3982b);
        b.a(parcel, 3, authAccountRequest.c, i);
        b.a(parcel, 4, authAccountRequest.d);
        b.a(parcel, 5, authAccountRequest.e);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AuthAccountRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        Integer num = null;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    iBinder = a.l(parcel, readInt);
                    break;
                case 3:
                    scopeArr = (Scope[]) a.b(parcel, readInt, Scope.CREATOR);
                    break;
                case 4:
                    num2 = a.e(parcel, readInt);
                    break;
                case 5:
                    num = a.e(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new AuthAccountRequest(i, iBinder, scopeArr, num2, num);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
