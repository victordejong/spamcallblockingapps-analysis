package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzm();
    @SafeParcelable.Field

    /* renamed from: A */
    public final String f9723A;
    @SafeParcelable.Field

    /* renamed from: B */
    public final String f9724B;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f9725f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f9726g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final String f9727h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f9728i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final long f9729j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final long f9730k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final String f9731l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final boolean f9732m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final boolean f9733n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final long f9734o;
    @SafeParcelable.Field

    /* renamed from: p */
    public final String f9735p;
    @SafeParcelable.Field

    /* renamed from: q */
    public final long f9736q;
    @SafeParcelable.Field

    /* renamed from: r */
    public final long f9737r;
    @SafeParcelable.Field

    /* renamed from: s */
    public final int f9738s;
    @SafeParcelable.Field

    /* renamed from: t */
    public final boolean f9739t;
    @SafeParcelable.Field

    /* renamed from: u */
    public final boolean f9740u;
    @SafeParcelable.Field

    /* renamed from: v */
    public final boolean f9741v;
    @SafeParcelable.Field

    /* renamed from: w */
    public final String f9742w;
    @SafeParcelable.Field

    /* renamed from: x */
    public final Boolean f9743x;
    @SafeParcelable.Field

    /* renamed from: y */
    public final long f9744y;
    @SafeParcelable.Field

    /* renamed from: z */
    public final List<String> f9745z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        Preconditions.m14527g(str);
        this.f9725f = str;
        this.f9726g = TextUtils.isEmpty(str2) ? null : str2;
        this.f9727h = str3;
        this.f9734o = j;
        this.f9728i = str4;
        this.f9729j = j2;
        this.f9730k = j3;
        this.f9731l = str5;
        this.f9732m = z;
        this.f9733n = z2;
        this.f9735p = str6;
        this.f9736q = j4;
        this.f9737r = j5;
        this.f9738s = i;
        this.f9739t = z3;
        this.f9740u = z4;
        this.f9741v = z5;
        this.f9742w = str7;
        this.f9743x = bool;
        this.f9744y = j6;
        this.f9745z = list;
        this.f9723A = str8;
        this.f9724B = str9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) long j, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z, @SafeParcelable.Param(id = 10) boolean z2, @SafeParcelable.Param(id = 11) long j3, @SafeParcelable.Param(id = 12) String str6, @SafeParcelable.Param(id = 13) long j4, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) int i, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 17) boolean z4, @SafeParcelable.Param(id = 18) boolean z5, @SafeParcelable.Param(id = 19) String str7, @SafeParcelable.Param(id = 21) Boolean bool, @SafeParcelable.Param(id = 22) long j6, @SafeParcelable.Param(id = 23) List<String> list, @SafeParcelable.Param(id = 24) String str8, @SafeParcelable.Param(id = 25) String str9) {
        this.f9725f = str;
        this.f9726g = str2;
        this.f9727h = str3;
        this.f9734o = j3;
        this.f9728i = str4;
        this.f9729j = j;
        this.f9730k = j2;
        this.f9731l = str5;
        this.f9732m = z;
        this.f9733n = z2;
        this.f9735p = str6;
        this.f9736q = j4;
        this.f9737r = j5;
        this.f9738s = i;
        this.f9739t = z3;
        this.f9740u = z4;
        this.f9741v = z5;
        this.f9742w = str7;
        this.f9743x = bool;
        this.f9744y = j6;
        this.f9745z = list;
        this.f9723A = str8;
        this.f9724B = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 2, this.f9725f, false);
        SafeParcelWriter.m14447q(parcel, 3, this.f9726g, false);
        SafeParcelWriter.m14447q(parcel, 4, this.f9727h, false);
        SafeParcelWriter.m14447q(parcel, 5, this.f9728i, false);
        SafeParcelWriter.m14451m(parcel, 6, this.f9729j);
        SafeParcelWriter.m14451m(parcel, 7, this.f9730k);
        SafeParcelWriter.m14447q(parcel, 8, this.f9731l, false);
        SafeParcelWriter.m14461c(parcel, 9, this.f9732m);
        SafeParcelWriter.m14461c(parcel, 10, this.f9733n);
        SafeParcelWriter.m14451m(parcel, 11, this.f9734o);
        SafeParcelWriter.m14447q(parcel, 12, this.f9735p, false);
        SafeParcelWriter.m14451m(parcel, 13, this.f9736q);
        SafeParcelWriter.m14451m(parcel, 14, this.f9737r);
        SafeParcelWriter.m14453k(parcel, 15, this.f9738s);
        SafeParcelWriter.m14461c(parcel, 16, this.f9739t);
        SafeParcelWriter.m14461c(parcel, 17, this.f9740u);
        SafeParcelWriter.m14461c(parcel, 18, this.f9741v);
        SafeParcelWriter.m14447q(parcel, 19, this.f9742w, false);
        SafeParcelWriter.m14460d(parcel, 21, this.f9743x, false);
        SafeParcelWriter.m14451m(parcel, 22, this.f9744y);
        SafeParcelWriter.m14445s(parcel, 23, this.f9745z, false);
        SafeParcelWriter.m14447q(parcel, 24, this.f9723A, false);
        SafeParcelWriter.m14447q(parcel, 25, this.f9724B, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
