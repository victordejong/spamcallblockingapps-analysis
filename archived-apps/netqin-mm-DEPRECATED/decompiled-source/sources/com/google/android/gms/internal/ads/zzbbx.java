package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbx.class */
public final class zzbbx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbbx> CREATOR = new zzbbw();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f24759a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f24760b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f24761c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f24762d;
    @SafeParcelable.Field

    /* renamed from: e */
    public boolean f24763e;

    public zzbbx(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzbbx(int i, int i2, boolean z, boolean z2) {
        this(i, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbbx(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto L_0x000b
            java.lang.String r0 = "0"
            r13 = r0
            goto L_0x000f
        L_0x000b:
            java.lang.String r0 = "1"
            r13 = r0
        L_0x000f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r13
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "afma-sdk-a-v"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r14
            java.lang.String r1 = r1.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbx.<init>(int, int, boolean, boolean, boolean):void");
    }

    @SafeParcelable.Constructor
    public zzbbx(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.f24759a = str;
        this.f24760b = i;
        this.f24761c = i2;
        this.f24762d = z;
        this.f24763e = z2;
    }

    /* renamed from: f */
    public static zzbbx m15844f() {
        return new zzbbx(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f24759a, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f24760b);
        SafeParcelWriter.m17231a(parcel, 4, this.f24761c);
        SafeParcelWriter.m17218a(parcel, 5, this.f24762d);
        SafeParcelWriter.m17218a(parcel, 6, this.f24763e);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
