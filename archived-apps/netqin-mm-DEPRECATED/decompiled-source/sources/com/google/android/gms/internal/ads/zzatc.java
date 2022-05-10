package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatc.class */
public final class zzatc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatc> CREATOR = new zzatf();
    @SafeParcelable.Field

    /* renamed from: a */
    public final Bundle f24447a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final zzbbx f24448b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final ApplicationInfo f24449c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f24450d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final List<String> f24451e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final PackageInfo f24452f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f24453g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f24454h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f24455i;
    @SafeParcelable.Field

    /* renamed from: j */
    public zzdqg f24456j;
    @SafeParcelable.Field

    /* renamed from: k */
    public String f24457k;

    @SafeParcelable.Constructor
    public zzatc(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) zzbbx zzbbxVar, @SafeParcelable.Param(id = 3) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) PackageInfo packageInfo, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) zzdqg zzdqgVar, @SafeParcelable.Param(id = 11) String str4) {
        this.f24447a = bundle;
        this.f24448b = zzbbxVar;
        this.f24450d = str;
        this.f24449c = applicationInfo;
        this.f24451e = list;
        this.f24452f = packageInfo;
        this.f24453g = str2;
        this.f24454h = z;
        this.f24455i = str3;
        this.f24456j = zzdqgVar;
        this.f24457k = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17229a(parcel, 1, this.f24447a, false);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f24448b, i, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f24449c, i, false);
        SafeParcelWriter.m17221a(parcel, 4, this.f24450d, false);
        SafeParcelWriter.m17209b(parcel, 5, this.f24451e, false);
        SafeParcelWriter.m17226a(parcel, 6, (Parcelable) this.f24452f, i, false);
        SafeParcelWriter.m17221a(parcel, 7, this.f24453g, false);
        SafeParcelWriter.m17218a(parcel, 8, this.f24454h);
        SafeParcelWriter.m17221a(parcel, 9, this.f24455i, false);
        SafeParcelWriter.m17226a(parcel, 10, (Parcelable) this.f24456j, i, false);
        SafeParcelWriter.m17221a(parcel, 11, this.f24457k, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
