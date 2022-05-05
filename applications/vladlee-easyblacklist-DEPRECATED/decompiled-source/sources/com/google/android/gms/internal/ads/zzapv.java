package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapv.class */
public final class zzapv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapv> CREATOR = new zzapu();

    /* renamed from: A */
    private final long f11146A;

    /* renamed from: B */
    private final String f11147B;

    /* renamed from: C */
    private final float f11148C;

    /* renamed from: D */
    private final int f11149D;

    /* renamed from: E */
    private final int f11150E;

    /* renamed from: F */
    private final boolean f11151F;

    /* renamed from: G */
    private final boolean f11152G;

    /* renamed from: H */
    private final String f11153H;

    /* renamed from: I */
    private final boolean f11154I;

    /* renamed from: J */
    private final String f11155J;

    /* renamed from: K */
    private final boolean f11156K;

    /* renamed from: L */
    private final int f11157L;

    /* renamed from: M */
    private final Bundle f11158M;

    /* renamed from: N */
    private final String f11159N;

    /* renamed from: O */
    private final zzxh f11160O;

    /* renamed from: P */
    private final boolean f11161P;

    /* renamed from: Q */
    private final Bundle f11162Q;

    /* renamed from: R */
    private final String f11163R;

    /* renamed from: S */
    private final String f11164S;

    /* renamed from: T */
    private final String f11165T;

    /* renamed from: U */
    private final boolean f11166U;

    /* renamed from: V */
    private final List<Integer> f11167V;

    /* renamed from: W */
    private final String f11168W;

    /* renamed from: X */
    private final List<String> f11169X;

    /* renamed from: Y */
    private final int f11170Y;

    /* renamed from: Z */
    private final boolean f11171Z;

    /* renamed from: a */
    private final int f11172a;

    /* renamed from: aa */
    private final boolean f11173aa;

    /* renamed from: ab */
    private final boolean f11174ab;

    /* renamed from: ac */
    private final ArrayList<String> f11175ac;

    /* renamed from: ad */
    private final String f11176ad;

    /* renamed from: ae */
    private final zzagz f11177ae;

    /* renamed from: af */
    private final String f11178af;

    /* renamed from: ag */
    private final Bundle f11179ag;

    /* renamed from: b */
    private final Bundle f11180b;

    /* renamed from: c */
    private final zzug f11181c;

    /* renamed from: d */
    private final zzuj f11182d;

    /* renamed from: e */
    private final String f11183e;

    /* renamed from: f */
    private final ApplicationInfo f11184f;

    /* renamed from: g */
    private final PackageInfo f11185g;

    /* renamed from: h */
    private final String f11186h;

    /* renamed from: i */
    private final String f11187i;

    /* renamed from: j */
    private final String f11188j;

    /* renamed from: k */
    private final zzazb f11189k;

    /* renamed from: l */
    private final Bundle f11190l;

    /* renamed from: m */
    private final int f11191m;

    /* renamed from: n */
    private final List<String> f11192n;

    /* renamed from: o */
    private final Bundle f11193o;

    /* renamed from: p */
    private final boolean f11194p;

    /* renamed from: q */
    private final int f11195q;

    /* renamed from: r */
    private final int f11196r;

    /* renamed from: s */
    private final float f11197s;

    /* renamed from: t */
    private final String f11198t;

    /* renamed from: u */
    private final long f11199u;

    /* renamed from: v */
    private final String f11200v;

    /* renamed from: w */
    private final List<String> f11201w;

    /* renamed from: x */
    private final String f11202x;

    /* renamed from: y */
    private final zzaby f11203y;

    /* renamed from: z */
    private final List<String> f11204z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapv(int i, Bundle bundle, zzug zzugVar, zzuj zzujVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzazb zzazbVar, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzaby zzabyVar, List<String> list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11, zzxh zzxhVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7, List<Integer> list4, String str15, List<String> list5, int i8, boolean z8, boolean z9, boolean z10, ArrayList<String> arrayList, String str16, zzagz zzagzVar, String str17, Bundle bundle6) {
        this.f11172a = i;
        this.f11180b = bundle;
        this.f11181c = zzugVar;
        this.f11182d = zzujVar;
        this.f11183e = str;
        this.f11184f = applicationInfo;
        this.f11185g = packageInfo;
        this.f11186h = str2;
        this.f11187i = str3;
        this.f11188j = str4;
        this.f11189k = zzazbVar;
        this.f11190l = bundle2;
        this.f11191m = i2;
        this.f11192n = list;
        this.f11204z = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.f11193o = bundle3;
        this.f11194p = z;
        this.f11195q = i3;
        this.f11196r = i4;
        this.f11197s = f;
        this.f11198t = str5;
        this.f11199u = j;
        this.f11200v = str6;
        this.f11201w = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f11202x = str7;
        this.f11203y = zzabyVar;
        this.f11146A = j2;
        this.f11147B = str8;
        this.f11148C = f2;
        this.f11154I = z2;
        this.f11149D = i5;
        this.f11150E = i6;
        this.f11151F = z3;
        this.f11152G = z4;
        this.f11153H = str9;
        this.f11155J = str10;
        this.f11156K = z5;
        this.f11157L = i7;
        this.f11158M = bundle4;
        this.f11159N = str11;
        this.f11160O = zzxhVar;
        this.f11161P = z6;
        this.f11162Q = bundle5;
        this.f11163R = str12;
        this.f11164S = str13;
        this.f11165T = str14;
        this.f11166U = z7;
        this.f11167V = list4;
        this.f11168W = str15;
        this.f11169X = list5;
        this.f11170Y = i8;
        this.f11171Z = z8;
        this.f11173aa = z9;
        this.f11174ab = z10;
        this.f11175ac = arrayList;
        this.f11176ad = str16;
        this.f11177ae = zzagzVar;
        this.f11178af = str17;
        this.f11179ag = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11172a);
        SafeParcelWriter.writeBundle(parcel, 2, this.f11180b, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f11181c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f11182d, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.f11183e, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.f11184f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.f11185g, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.f11186h, false);
        SafeParcelWriter.writeString(parcel, 9, this.f11187i, false);
        SafeParcelWriter.writeString(parcel, 10, this.f11188j, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.f11189k, i, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.f11190l, false);
        SafeParcelWriter.writeInt(parcel, 13, this.f11191m);
        SafeParcelWriter.writeStringList(parcel, 14, this.f11192n, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.f11193o, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.f11194p);
        SafeParcelWriter.writeInt(parcel, 18, this.f11195q);
        SafeParcelWriter.writeInt(parcel, 19, this.f11196r);
        SafeParcelWriter.writeFloat(parcel, 20, this.f11197s);
        SafeParcelWriter.writeString(parcel, 21, this.f11198t, false);
        SafeParcelWriter.writeLong(parcel, 25, this.f11199u);
        SafeParcelWriter.writeString(parcel, 26, this.f11200v, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.f11201w, false);
        SafeParcelWriter.writeString(parcel, 28, this.f11202x, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.f11203y, i, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.f11204z, false);
        SafeParcelWriter.writeLong(parcel, 31, this.f11146A);
        SafeParcelWriter.writeString(parcel, 33, this.f11147B, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.f11148C);
        SafeParcelWriter.writeInt(parcel, 35, this.f11149D);
        SafeParcelWriter.writeInt(parcel, 36, this.f11150E);
        SafeParcelWriter.writeBoolean(parcel, 37, this.f11151F);
        SafeParcelWriter.writeBoolean(parcel, 38, this.f11152G);
        SafeParcelWriter.writeString(parcel, 39, this.f11153H, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.f11154I);
        SafeParcelWriter.writeString(parcel, 41, this.f11155J, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.f11156K);
        SafeParcelWriter.writeInt(parcel, 43, this.f11157L);
        SafeParcelWriter.writeBundle(parcel, 44, this.f11158M, false);
        SafeParcelWriter.writeString(parcel, 45, this.f11159N, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.f11160O, i, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.f11161P);
        SafeParcelWriter.writeBundle(parcel, 48, this.f11162Q, false);
        SafeParcelWriter.writeString(parcel, 49, this.f11163R, false);
        SafeParcelWriter.writeString(parcel, 50, this.f11164S, false);
        SafeParcelWriter.writeString(parcel, 51, this.f11165T, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.f11166U);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.f11167V, false);
        SafeParcelWriter.writeString(parcel, 54, this.f11168W, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.f11169X, false);
        SafeParcelWriter.writeInt(parcel, 56, this.f11170Y);
        SafeParcelWriter.writeBoolean(parcel, 57, this.f11171Z);
        SafeParcelWriter.writeBoolean(parcel, 58, this.f11173aa);
        SafeParcelWriter.writeBoolean(parcel, 59, this.f11174ab);
        SafeParcelWriter.writeStringList(parcel, 60, this.f11175ac, false);
        SafeParcelWriter.writeString(parcel, 61, this.f11176ad, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.f11177ae, i, false);
        SafeParcelWriter.writeString(parcel, 64, this.f11178af, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.f11179ag, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
