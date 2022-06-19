package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c.class */
public final class C1483c implements Parcelable.Creator<b> {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ b createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        String str2 = null;
        p9 p9Var = null;
        String str3 = null;
        t tVar = null;
        t tVar2 = null;
        t tVar3 = null;
        boolean z = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    p9Var = (p9) SafeParcelReader.m3298c(parcel, m3283r, p9.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 6:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 7:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    tVar = (t) SafeParcelReader.m3298c(parcel, m3283r, t.CREATOR);
                    break;
                case 9:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 10:
                    tVar2 = (t) SafeParcelReader.m3298c(parcel, m3283r, t.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 12:
                    tVar3 = (t) SafeParcelReader.m3298c(parcel, m3283r, t.CREATOR);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new b(str, str2, p9Var, c, z, str3, tVar, c2, tVar2, c3, tVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ b[] newArray(int i) {
        return new b[i];
    }
}
