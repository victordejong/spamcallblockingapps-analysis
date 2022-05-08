package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/n.class */
public final class n implements Parcelable.Creator<Status> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Status status, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, status.h);
        b.a(parcel, 2, status.i);
        b.a(parcel, 3, status.j, i);
        b.b(parcel, 1000, status.g);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    str = a.k(parcel, readInt);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) a.a(parcel, readInt, PendingIntent.CREATOR);
                    break;
                case 1000:
                    i2 = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new Status(i2, i, str, pendingIntent);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
