package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.ba */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ba.class */
public final class C1482ba implements Parcelable.Creator<aa> {
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ aa createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        char c6 = 0;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        boolean z3 = true;
        boolean z4 = false;
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
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 7:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 8:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 9:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 10:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 11:
                    c6 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 12:
                    str6 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 13:
                    c3 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 14:
                    c4 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 15:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 16:
                    z3 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
                case 18:
                    z4 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 19:
                    str7 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 21:
                    bool = SafeParcelReader.m3289l(parcel, m3283r);
                    break;
                case 22:
                    c5 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 23:
                    arrayList = SafeParcelReader.m3295f(parcel, m3283r);
                    break;
                case 24:
                    str8 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 25:
                    str9 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new aa(str, str2, str3, str4, c, c2, str5, z, z2, c6, str6, c3, c4, i, z3, z4, str7, bool, c5, arrayList, str8, str9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ aa[] newArray(int i) {
        return new aa[i];
    }
}
