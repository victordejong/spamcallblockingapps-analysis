package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C0934b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.q9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q9.class */
public final class C1578q9 implements Parcelable.Creator<p9> {
    /* renamed from: a */
    static void m1522a(p9 p9Var, Parcel parcel, int i) {
        int m3274a = C0934b.m3274a(parcel);
        C0934b.m3262m(parcel, 1, p9Var.f);
        C0934b.m3258q(parcel, 2, p9Var.g, false);
        C0934b.m3261n(parcel, 3, p9Var.h);
        C0934b.m3260o(parcel, 4, p9Var.i, false);
        C0934b.m3264k(parcel, 5, null, false);
        C0934b.m3258q(parcel, 6, p9Var.j, false);
        C0934b.m3258q(parcel, 7, p9Var.k, false);
        C0934b.m3266i(parcel, 8, p9Var.l, false);
        C0934b.m3273b(parcel, m3274a);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ p9 createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        char c = 0;
        int i = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 4:
                    l = SafeParcelReader.m3279v(parcel, m3283r);
                    break;
                case 5:
                    f = SafeParcelReader.m3284q(parcel, m3283r);
                    break;
                case 6:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 7:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    d = SafeParcelReader.m3286o(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new p9(i, str, c, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ p9[] newArray(int i) {
        return new p9[i];
    }
}
