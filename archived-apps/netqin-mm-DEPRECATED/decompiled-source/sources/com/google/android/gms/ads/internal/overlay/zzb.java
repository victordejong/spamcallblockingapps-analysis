package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f22745a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f22746b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f22747c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f22748d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f22749e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f22750f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f22751g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final Intent f22752h;

    public zzb(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7, @SafeParcelable.Param(id = 9) Intent intent) {
        this.f22745a = str;
        this.f22746b = str2;
        this.f22747c = str3;
        this.f22748d = str4;
        this.f22749e = str5;
        this.f22750f = str6;
        this.f22751g = str7;
        this.f22752h = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f22745a, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f22746b, false);
        SafeParcelWriter.m17221a(parcel, 4, this.f22747c, false);
        SafeParcelWriter.m17221a(parcel, 5, this.f22748d, false);
        SafeParcelWriter.m17221a(parcel, 6, this.f22749e, false);
        SafeParcelWriter.m17221a(parcel, 7, this.f22750f, false);
        SafeParcelWriter.m17221a(parcel, 8, this.f22751g, false);
        SafeParcelWriter.m17226a(parcel, 9, (Parcelable) this.f22752h, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
