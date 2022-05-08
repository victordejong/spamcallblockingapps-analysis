package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/i.class */
public final class i implements Parcelable.Creator<ConnectionResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ConnectionResult connectionResult, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, connectionResult.f3923b);
        b.b(parcel, 2, connectionResult.c);
        b.a(parcel, 3, connectionResult.d, i);
        b.a(parcel, 4, connectionResult.e);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = a.d(parcel, readInt);
                    break;
                case 2:
                    i = a.d(parcel, readInt);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) a.a(parcel, readInt, PendingIntent.CREATOR);
                    break;
                case 4:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ConnectionResult(i2, i, pendingIntent, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}
