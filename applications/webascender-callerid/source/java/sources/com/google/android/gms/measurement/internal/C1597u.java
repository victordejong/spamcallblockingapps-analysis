package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C0934b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u.class */
public final class C1597u implements Parcelable.Creator<t> {
    /* renamed from: a */
    static void m1518a(t tVar, Parcel parcel, int i) {
        int m3274a = C0934b.m3274a(parcel);
        C0934b.m3258q(parcel, 2, tVar.f, false);
        C0934b.m3259p(parcel, 3, tVar.g, i, false);
        C0934b.m3258q(parcel, 4, tVar.h, false);
        C0934b.m3261n(parcel, 5, tVar.i);
        C0934b.m3273b(parcel, m3274a);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ t createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        r rVar = null;
        String str2 = null;
        char c = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 2) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 3) {
                rVar = (r) SafeParcelReader.m3298c(parcel, m3283r, r.CREATOR);
            } else if (m3291j == 4) {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new t(str, rVar, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ t[] newArray(int i) {
        return new t[i];
    }
}
