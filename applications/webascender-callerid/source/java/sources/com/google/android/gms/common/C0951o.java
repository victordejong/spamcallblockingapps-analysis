package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/o.class */
public final class C0951o implements Parcelable.Creator<b> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ b createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m3298c(parcel, m3283r, PendingIntent.CREATOR);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new b(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ b[] newArray(int i) {
        return new b[i];
    }
}
