package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.api.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/p.class */
public final class C0888p implements Parcelable.Creator<Status> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        PendingIntent pendingIntent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.m3298c(parcel, m3283r, PendingIntent.CREATOR);
            } else if (m3291j != 1000) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new Status(i, i2, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Status[] newArray(int i) {
        return new Status[i];
    }
}
