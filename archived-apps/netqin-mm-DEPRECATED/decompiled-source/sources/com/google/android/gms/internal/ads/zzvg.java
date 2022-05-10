package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvg.class */
public final class zzvg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvg> CREATOR = new zzvi();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29001a;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f29002b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final Bundle f29003c;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f29004d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final List<String> f29005e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final boolean f29006f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f29007g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f29008h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f29009i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final zzaag f29010j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final Location f29011k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final String f29012l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final Bundle f29013m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final Bundle f29014n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final List<String> f29015o;
    @SafeParcelable.Field

    /* renamed from: p */
    public final String f29016p;
    @SafeParcelable.Field

    /* renamed from: q */
    public final String f29017q;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: r */
    public final boolean f29018r;
    @SafeParcelable.Field

    /* renamed from: s */
    public final zzuy f29019s;
    @SafeParcelable.Field

    /* renamed from: t */
    public final int f29020t;
    @SafeParcelable.Field

    /* renamed from: u */
    public final String f29021u;
    @SafeParcelable.Field

    /* renamed from: v */
    public final List<String> f29022v;

    @SafeParcelable.Constructor
    public zzvg(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) Bundle bundle, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) int i3, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) String str, @SafeParcelable.Param(id = 10) zzaag zzaagVar, @SafeParcelable.Param(id = 11) Location location, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 13) Bundle bundle2, @SafeParcelable.Param(id = 14) Bundle bundle3, @SafeParcelable.Param(id = 15) List<String> list2, @SafeParcelable.Param(id = 16) String str3, @SafeParcelable.Param(id = 17) String str4, @SafeParcelable.Param(id = 18) boolean z3, @SafeParcelable.Param(id = 19) zzuy zzuyVar, @SafeParcelable.Param(id = 20) int i4, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 22) List<String> list3) {
        this.f29001a = i;
        this.f29002b = j;
        this.f29003c = bundle == null ? new Bundle() : bundle;
        this.f29004d = i2;
        this.f29005e = list;
        this.f29006f = z;
        this.f29007g = i3;
        this.f29008h = z2;
        this.f29009i = str;
        this.f29010j = zzaagVar;
        this.f29011k = location;
        this.f29012l = str2;
        this.f29013m = bundle2 == null ? new Bundle() : bundle2;
        this.f29014n = bundle3;
        this.f29015o = list2;
        this.f29016p = str3;
        this.f29017q = str4;
        this.f29018r = z3;
        this.f29019s = zzuyVar;
        this.f29020t = i4;
        this.f29021u = str5;
        this.f29022v = list3 == null ? new ArrayList<>() : list3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvg)) {
            return false;
        }
        zzvg zzvgVar = (zzvg) obj;
        return this.f29001a == zzvgVar.f29001a && this.f29002b == zzvgVar.f29002b && Objects.m17295a(this.f29003c, zzvgVar.f29003c) && this.f29004d == zzvgVar.f29004d && Objects.m17295a(this.f29005e, zzvgVar.f29005e) && this.f29006f == zzvgVar.f29006f && this.f29007g == zzvgVar.f29007g && this.f29008h == zzvgVar.f29008h && Objects.m17295a(this.f29009i, zzvgVar.f29009i) && Objects.m17295a(this.f29010j, zzvgVar.f29010j) && Objects.m17295a(this.f29011k, zzvgVar.f29011k) && Objects.m17295a(this.f29012l, zzvgVar.f29012l) && Objects.m17295a(this.f29013m, zzvgVar.f29013m) && Objects.m17295a(this.f29014n, zzvgVar.f29014n) && Objects.m17295a(this.f29015o, zzvgVar.f29015o) && Objects.m17295a(this.f29016p, zzvgVar.f29016p) && Objects.m17295a(this.f29017q, zzvgVar.f29017q) && this.f29018r == zzvgVar.f29018r && this.f29020t == zzvgVar.f29020t && Objects.m17295a(this.f29021u, zzvgVar.f29021u) && Objects.m17295a(this.f29022v, zzvgVar.f29022v);
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29001a), Long.valueOf(this.f29002b), this.f29003c, Integer.valueOf(this.f29004d), this.f29005e, Boolean.valueOf(this.f29006f), Integer.valueOf(this.f29007g), Boolean.valueOf(this.f29008h), this.f29009i, this.f29010j, this.f29011k, this.f29012l, this.f29013m, this.f29014n, this.f29015o, this.f29016p, this.f29017q, Boolean.valueOf(this.f29018r), Integer.valueOf(this.f29020t), this.f29021u, this.f29022v);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29001a);
        SafeParcelWriter.m17230a(parcel, 2, this.f29002b);
        SafeParcelWriter.m17229a(parcel, 3, this.f29003c, false);
        SafeParcelWriter.m17231a(parcel, 4, this.f29004d);
        SafeParcelWriter.m17209b(parcel, 5, this.f29005e, false);
        SafeParcelWriter.m17218a(parcel, 6, this.f29006f);
        SafeParcelWriter.m17231a(parcel, 7, this.f29007g);
        SafeParcelWriter.m17218a(parcel, 8, this.f29008h);
        SafeParcelWriter.m17221a(parcel, 9, this.f29009i, false);
        SafeParcelWriter.m17226a(parcel, 10, (Parcelable) this.f29010j, i, false);
        SafeParcelWriter.m17226a(parcel, 11, (Parcelable) this.f29011k, i, false);
        SafeParcelWriter.m17221a(parcel, 12, this.f29012l, false);
        SafeParcelWriter.m17229a(parcel, 13, this.f29013m, false);
        SafeParcelWriter.m17229a(parcel, 14, this.f29014n, false);
        SafeParcelWriter.m17209b(parcel, 15, this.f29015o, false);
        SafeParcelWriter.m17221a(parcel, 16, this.f29016p, false);
        SafeParcelWriter.m17221a(parcel, 17, this.f29017q, false);
        SafeParcelWriter.m17218a(parcel, 18, this.f29018r);
        SafeParcelWriter.m17226a(parcel, 19, (Parcelable) this.f29019s, i, false);
        SafeParcelWriter.m17231a(parcel, 20, this.f29020t);
        SafeParcelWriter.m17221a(parcel, 21, this.f29021u, false);
        SafeParcelWriter.m17209b(parcel, 22, this.f29022v, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
