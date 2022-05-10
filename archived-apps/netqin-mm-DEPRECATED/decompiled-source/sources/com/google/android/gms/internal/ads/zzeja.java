package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import p131c.p161d.p170b.p224d.p252g.p253a.f70;
import p131c.p161d.p170b.p224d.p252g.p253a.j70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeja.class */
public abstract class zzeja {

    /* renamed from: a */
    public int f28054a;

    /* renamed from: b */
    public int f28055b;

    /* renamed from: c */
    public int f28056c;

    /* renamed from: d */
    public j70 f28057d;

    public zzeja() {
        this.f28055b = 100;
        this.f28056c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }

    /* renamed from: a */
    public static long m12529a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static zzeja m12528a(byte[] bArr, int i, int i2, boolean z) {
        f70 f70Var = new f70(bArr, i, i2, z);
        try {
            f70Var.mo12524c(i2);
            return f70Var;
        } catch (zzekj e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m12520e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public abstract double mo12531a() throws IOException;

    /* renamed from: a */
    public abstract void mo12530a(int i) throws zzekj;

    /* renamed from: b */
    public abstract float mo12527b() throws IOException;

    /* renamed from: b */
    public abstract boolean mo12526b(int i) throws IOException;

    /* renamed from: c */
    public abstract int mo12524c(int i) throws zzekj;

    /* renamed from: c */
    public abstract String mo12525c() throws IOException;

    /* renamed from: d */
    public abstract int mo12523d() throws IOException;

    /* renamed from: d */
    public abstract void mo12522d(int i);

    /* renamed from: e */
    public abstract long mo12521e() throws IOException;

    /* renamed from: f */
    public abstract long mo12519f() throws IOException;

    /* renamed from: g */
    public abstract int mo12518g() throws IOException;

    /* renamed from: h */
    public abstract long mo12517h() throws IOException;

    /* renamed from: i */
    public abstract int mo12516i() throws IOException;

    /* renamed from: j */
    public abstract boolean mo12515j() throws IOException;

    /* renamed from: k */
    public abstract String mo12514k() throws IOException;

    /* renamed from: l */
    public abstract zzeip mo12513l() throws IOException;

    /* renamed from: m */
    public abstract int mo12512m() throws IOException;

    /* renamed from: n */
    public abstract int mo12511n() throws IOException;

    /* renamed from: o */
    public abstract int mo12510o() throws IOException;

    /* renamed from: p */
    public abstract long mo12509p() throws IOException;

    /* renamed from: q */
    public abstract int mo12508q() throws IOException;

    /* renamed from: r */
    public abstract long mo12507r() throws IOException;

    /* renamed from: s */
    public abstract boolean mo12506s() throws IOException;

    /* renamed from: t */
    public abstract int mo12505t();
}
