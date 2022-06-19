package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.cloudmessaging.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/f.class */
public final class C0789f implements Parcelable.Creator<a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                intent = (Intent) SafeParcelReader.m3298c(parcel, m3283r, Intent.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new a(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a[] newArray(int i) {
        return new a[i];
    }
}
