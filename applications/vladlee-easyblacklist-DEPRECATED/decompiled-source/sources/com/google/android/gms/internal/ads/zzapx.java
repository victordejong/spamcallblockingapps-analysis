package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapx.class */
public final class zzapx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapx> CREATOR = new zzapw();

    /* renamed from: A */
    private final boolean f11205A;

    /* renamed from: B */
    private final boolean f11206B;

    /* renamed from: C */
    private final zzasd f11207C;

    /* renamed from: D */
    private final List<String> f11208D;

    /* renamed from: E */
    private final List<String> f11209E;

    /* renamed from: F */
    private final boolean f11210F;

    /* renamed from: G */
    private final zzapz f11211G;

    /* renamed from: H */
    private final boolean f11212H;

    /* renamed from: I */
    private String f11213I;

    /* renamed from: J */
    private final List<String> f11214J;

    /* renamed from: K */
    private final boolean f11215K;

    /* renamed from: L */
    private final String f11216L;

    /* renamed from: M */
    private final zzatn f11217M;

    /* renamed from: N */
    private final String f11218N;

    /* renamed from: O */
    private final boolean f11219O;

    /* renamed from: P */
    private final boolean f11220P;

    /* renamed from: Q */
    private Bundle f11221Q;

    /* renamed from: R */
    private final boolean f11222R;

    /* renamed from: S */
    private final int f11223S;

    /* renamed from: T */
    private final boolean f11224T;

    /* renamed from: U */
    private final List<String> f11225U;

    /* renamed from: V */
    private final boolean f11226V;

    /* renamed from: W */
    private final String f11227W;

    /* renamed from: X */
    private String f11228X;

    /* renamed from: Y */
    private boolean f11229Y;

    /* renamed from: Z */
    private boolean f11230Z;

    /* renamed from: a */
    private final int f11231a;

    /* renamed from: b */
    private final String f11232b;

    /* renamed from: c */
    private String f11233c;

    /* renamed from: d */
    private final List<String> f11234d;

    /* renamed from: e */
    private final int f11235e;

    /* renamed from: f */
    private final List<String> f11236f;

    /* renamed from: g */
    private final long f11237g;

    /* renamed from: h */
    private final boolean f11238h;

    /* renamed from: i */
    private final long f11239i;

    /* renamed from: j */
    private final List<String> f11240j;

    /* renamed from: k */
    private final long f11241k;

    /* renamed from: l */
    private final int f11242l;

    /* renamed from: m */
    private final String f11243m;

    /* renamed from: n */
    private final long f11244n;

    /* renamed from: o */
    private final String f11245o;

    /* renamed from: p */
    private final boolean f11246p;

    /* renamed from: q */
    private final String f11247q;

    /* renamed from: r */
    private final String f11248r;

    /* renamed from: s */
    private final boolean f11249s;

    /* renamed from: t */
    private final boolean f11250t;

    /* renamed from: u */
    private final boolean f11251u;

    /* renamed from: v */
    private final boolean f11252v;

    /* renamed from: w */
    private final boolean f11253w;

    /* renamed from: x */
    private zzaqj f11254x;

    /* renamed from: y */
    private String f11255y;

    /* renamed from: z */
    private final String f11256z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapx(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, zzaqj zzaqjVar, String str7, String str8, boolean z8, boolean z9, zzasd zzasdVar, List<String> list4, List<String> list5, boolean z10, zzapz zzapzVar, boolean z11, String str9, List<String> list6, boolean z12, String str10, zzatn zzatnVar, String str11, boolean z13, boolean z14, Bundle bundle, boolean z15, int i4, boolean z16, List<String> list7, boolean z17, String str12, String str13, boolean z18, boolean z19) {
        zzaqj zzaqjVar2;
        zzaqm zzaqmVar;
        this.f11231a = i;
        this.f11232b = str;
        this.f11233c = str2;
        List<String> list8 = null;
        this.f11234d = list != null ? Collections.unmodifiableList(list) : null;
        this.f11235e = i2;
        this.f11236f = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.f11237g = j;
        this.f11238h = z;
        this.f11239i = j2;
        this.f11240j = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.f11241k = j3;
        this.f11242l = i3;
        this.f11243m = str3;
        this.f11244n = j4;
        this.f11245o = str4;
        this.f11246p = z2;
        this.f11247q = str5;
        this.f11248r = str6;
        this.f11249s = z3;
        this.f11250t = z4;
        this.f11251u = z5;
        this.f11252v = z6;
        this.f11219O = z13;
        this.f11253w = z7;
        this.f11254x = zzaqjVar;
        this.f11255y = str7;
        this.f11256z = str8;
        if (this.f11233c == null && (zzaqjVar2 = this.f11254x) != null && (zzaqmVar = (zzaqm) zzaqjVar2.zza(zzaqm.CREATOR)) != null && !TextUtils.isEmpty(zzaqmVar.f11260a)) {
            this.f11233c = zzaqmVar.f11260a;
        }
        this.f11205A = z8;
        this.f11206B = z9;
        this.f11207C = zzasdVar;
        this.f11208D = list4;
        this.f11209E = list5;
        this.f11210F = z10;
        this.f11211G = zzapzVar;
        this.f11212H = z11;
        this.f11213I = str9;
        this.f11214J = list6;
        this.f11215K = z12;
        this.f11216L = str10;
        this.f11217M = zzatnVar;
        this.f11218N = str11;
        this.f11220P = z14;
        this.f11221Q = bundle;
        this.f11222R = z15;
        this.f11223S = i4;
        this.f11224T = z16;
        this.f11225U = list7 != null ? Collections.unmodifiableList(list7) : list8;
        this.f11226V = z17;
        this.f11227W = str12;
        this.f11228X = str13;
        this.f11229Y = z18;
        this.f11230Z = z19;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11231a);
        SafeParcelWriter.writeString(parcel, 2, this.f11232b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f11233c, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.f11234d, false);
        SafeParcelWriter.writeInt(parcel, 5, this.f11235e);
        SafeParcelWriter.writeStringList(parcel, 6, this.f11236f, false);
        SafeParcelWriter.writeLong(parcel, 7, this.f11237g);
        SafeParcelWriter.writeBoolean(parcel, 8, this.f11238h);
        SafeParcelWriter.writeLong(parcel, 9, this.f11239i);
        SafeParcelWriter.writeStringList(parcel, 10, this.f11240j, false);
        SafeParcelWriter.writeLong(parcel, 11, this.f11241k);
        SafeParcelWriter.writeInt(parcel, 12, this.f11242l);
        SafeParcelWriter.writeString(parcel, 13, this.f11243m, false);
        SafeParcelWriter.writeLong(parcel, 14, this.f11244n);
        SafeParcelWriter.writeString(parcel, 15, this.f11245o, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.f11246p);
        SafeParcelWriter.writeString(parcel, 19, this.f11247q, false);
        SafeParcelWriter.writeString(parcel, 21, this.f11248r, false);
        SafeParcelWriter.writeBoolean(parcel, 22, this.f11249s);
        SafeParcelWriter.writeBoolean(parcel, 23, this.f11250t);
        SafeParcelWriter.writeBoolean(parcel, 24, this.f11251u);
        SafeParcelWriter.writeBoolean(parcel, 25, this.f11252v);
        SafeParcelWriter.writeBoolean(parcel, 26, this.f11253w);
        SafeParcelWriter.writeParcelable(parcel, 28, this.f11254x, i, false);
        SafeParcelWriter.writeString(parcel, 29, this.f11255y, false);
        SafeParcelWriter.writeString(parcel, 30, this.f11256z, false);
        SafeParcelWriter.writeBoolean(parcel, 31, this.f11205A);
        SafeParcelWriter.writeBoolean(parcel, 32, this.f11206B);
        SafeParcelWriter.writeParcelable(parcel, 33, this.f11207C, i, false);
        SafeParcelWriter.writeStringList(parcel, 34, this.f11208D, false);
        SafeParcelWriter.writeStringList(parcel, 35, this.f11209E, false);
        SafeParcelWriter.writeBoolean(parcel, 36, this.f11210F);
        SafeParcelWriter.writeParcelable(parcel, 37, this.f11211G, i, false);
        SafeParcelWriter.writeBoolean(parcel, 38, this.f11212H);
        SafeParcelWriter.writeString(parcel, 39, this.f11213I, false);
        SafeParcelWriter.writeStringList(parcel, 40, this.f11214J, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.f11215K);
        SafeParcelWriter.writeString(parcel, 43, this.f11216L, false);
        SafeParcelWriter.writeParcelable(parcel, 44, this.f11217M, i, false);
        SafeParcelWriter.writeString(parcel, 45, this.f11218N, false);
        SafeParcelWriter.writeBoolean(parcel, 46, this.f11219O);
        SafeParcelWriter.writeBoolean(parcel, 47, this.f11220P);
        SafeParcelWriter.writeBundle(parcel, 48, this.f11221Q, false);
        SafeParcelWriter.writeBoolean(parcel, 49, this.f11222R);
        SafeParcelWriter.writeInt(parcel, 50, this.f11223S);
        SafeParcelWriter.writeBoolean(parcel, 51, this.f11224T);
        SafeParcelWriter.writeStringList(parcel, 52, this.f11225U, false);
        SafeParcelWriter.writeBoolean(parcel, 53, this.f11226V);
        SafeParcelWriter.writeString(parcel, 54, this.f11227W, false);
        SafeParcelWriter.writeString(parcel, 55, this.f11228X, false);
        SafeParcelWriter.writeBoolean(parcel, 56, this.f11229Y);
        SafeParcelWriter.writeBoolean(parcel, 57, this.f11230Z);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
