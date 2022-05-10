package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasq.class */
public final class zzasq implements Parcelable.Creator<zzasr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasr createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                arrayList = SafeParcelReader.m17244r(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzasr(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasr[] newArray(int i) {
        return new zzasr[i];
    }
}
