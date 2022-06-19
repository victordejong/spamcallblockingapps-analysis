package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.stats.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/f.class */
public final class C0959f implements Parcelable.Creator<WakeLockEvent> {
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        boolean z = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
                case 4:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    i3 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m3295f(parcel, m3283r);
                    break;
                case 8:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 10:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 11:
                    i2 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 12:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 13:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 14:
                    i4 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 15:
                    f = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 16:
                    c3 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 17:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 18:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new WakeLockEvent(i, c, i2, str, i3, arrayList, str2, c2, i4, str3, str4, f, c3, str5, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
