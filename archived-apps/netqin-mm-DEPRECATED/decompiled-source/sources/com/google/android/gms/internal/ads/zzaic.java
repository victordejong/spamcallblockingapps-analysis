package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Map;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaic.class */
public final class zzaic extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaic> CREATOR = new zzaib();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24124a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String[] f24125b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String[] f24126c;

    @SafeParcelable.Constructor
    public zzaic(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String[] strArr, @SafeParcelable.Param(id = 3) String[] strArr2) {
        this.f24124a = str;
        this.f24125b = strArr;
        this.f24126c = strArr2;
    }

    /* renamed from: a */
    public static zzaic m16742a(zzaa<?> zzaaVar) throws zzl {
        Map<String, String> a = zzaaVar.mo16972a();
        int size = a.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : a.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzaic(zzaaVar.m16959d(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24124a, false);
        SafeParcelWriter.m17214a(parcel, 2, this.f24125b, false);
        SafeParcelWriter.m17214a(parcel, 3, this.f24126c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
