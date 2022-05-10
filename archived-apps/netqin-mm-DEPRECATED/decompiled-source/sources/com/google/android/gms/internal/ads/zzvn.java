package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvn.class */
public final class zzvn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvn> CREATOR = new zzvm();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f29035a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29036b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f29037c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f29038d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f29039e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final int f29040f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final zzvn[] f29041g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f29042h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final boolean f29043i;
    @SafeParcelable.Field

    /* renamed from: j */
    public boolean f29044j;
    @SafeParcelable.Field

    /* renamed from: k */
    public boolean f29045k;
    @SafeParcelable.Field

    /* renamed from: l */
    public boolean f29046l;
    @SafeParcelable.Field

    /* renamed from: m */
    public boolean f29047m;
    @SafeParcelable.Field

    /* renamed from: n */
    public boolean f29048n;

    public zzvn() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public zzvn(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzvn(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvn.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    @SafeParcelable.Constructor
    public zzvn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) int i3, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) zzvn[] zzvnVarArr, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) boolean z3, @SafeParcelable.Param(id = 11) boolean z4, @SafeParcelable.Param(id = 12) boolean z5, @SafeParcelable.Param(id = 13) boolean z6, @SafeParcelable.Param(id = 14) boolean z7, @SafeParcelable.Param(id = 15) boolean z8) {
        this.f29035a = str;
        this.f29036b = i;
        this.f29037c = i2;
        this.f29038d = z;
        this.f29039e = i3;
        this.f29040f = i4;
        this.f29041g = zzvnVarArr;
        this.f29042h = z2;
        this.f29043i = z3;
        this.f29044j = z4;
        this.f29045k = z5;
        this.f29046l = z6;
        this.f29047m = z7;
        this.f29048n = z8;
    }

    /* renamed from: a */
    public static int m11199a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    /* renamed from: b */
    public static int m11198b(DisplayMetrics displayMetrics) {
        return (int) (m11197c(displayMetrics) * displayMetrics.density);
    }

    /* renamed from: c */
    public static int m11197c(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    /* renamed from: i */
    public static zzvn m11195i() {
        return new zzvn("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false);
    }

    /* renamed from: u */
    public static zzvn m11194u() {
        return new zzvn("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    /* renamed from: v */
    public static zzvn m11193v() {
        return new zzvn("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false);
    }

    /* renamed from: y */
    public static zzvn m11192y() {
        return new zzvn("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false);
    }

    /* renamed from: f */
    public final AdSize m11196f() {
        return zzb.m17890a(this.f29039e, this.f29036b, this.f29035a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f29035a, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f29036b);
        SafeParcelWriter.m17231a(parcel, 4, this.f29037c);
        SafeParcelWriter.m17218a(parcel, 5, this.f29038d);
        SafeParcelWriter.m17231a(parcel, 6, this.f29039e);
        SafeParcelWriter.m17231a(parcel, 7, this.f29040f);
        SafeParcelWriter.m17215a(parcel, 8, (Parcelable[]) this.f29041g, i, false);
        SafeParcelWriter.m17218a(parcel, 9, this.f29042h);
        SafeParcelWriter.m17218a(parcel, 10, this.f29043i);
        SafeParcelWriter.m17218a(parcel, 11, this.f29044j);
        SafeParcelWriter.m17218a(parcel, 12, this.f29045k);
        SafeParcelWriter.m17218a(parcel, 13, this.f29046l);
        SafeParcelWriter.m17218a(parcel, 14, this.f29047m);
        SafeParcelWriter.m17218a(parcel, 15, this.f29048n);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
