package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeop.class */
public final class zzeop {

    /* renamed from: j */
    public static final zzeop f28124j = new zzeop(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    public static final zzeop f28125k = new zzeop(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    public static final zzeop f28126l = new zzeop(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    public static final zzeop f28127m = new zzeop(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a */
    public final double f28128a;

    /* renamed from: b */
    public final double f28129b;

    /* renamed from: c */
    public final double f28130c;

    /* renamed from: d */
    public final double f28131d;

    /* renamed from: e */
    public final double f28132e;

    /* renamed from: f */
    public final double f28133f;

    /* renamed from: g */
    public final double f28134g;

    /* renamed from: h */
    public final double f28135h;

    /* renamed from: i */
    public final double f28136i;

    public zzeop(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f28128a = d5;
        this.f28129b = d6;
        this.f28130c = d7;
        this.f28131d = d;
        this.f28132e = d2;
        this.f28133f = d3;
        this.f28134g = d4;
        this.f28135h = d8;
        this.f28136i = d9;
    }

    /* renamed from: a */
    public static zzeop m12205a(ByteBuffer byteBuffer) {
        double d = zzbq.m15186d(byteBuffer);
        double d2 = zzbq.m15186d(byteBuffer);
        double e = zzbq.m15185e(byteBuffer);
        return new zzeop(d, d2, zzbq.m15186d(byteBuffer), zzbq.m15186d(byteBuffer), e, zzbq.m15185e(byteBuffer), zzbq.m15185e(byteBuffer), zzbq.m15186d(byteBuffer), zzbq.m15186d(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzeop.class != obj.getClass()) {
            return false;
        }
        zzeop zzeopVar = (zzeop) obj;
        return Double.compare(zzeopVar.f28131d, this.f28131d) == 0 && Double.compare(zzeopVar.f28132e, this.f28132e) == 0 && Double.compare(zzeopVar.f28133f, this.f28133f) == 0 && Double.compare(zzeopVar.f28134g, this.f28134g) == 0 && Double.compare(zzeopVar.f28135h, this.f28135h) == 0 && Double.compare(zzeopVar.f28136i, this.f28136i) == 0 && Double.compare(zzeopVar.f28128a, this.f28128a) == 0 && Double.compare(zzeopVar.f28129b, this.f28129b) == 0 && Double.compare(zzeopVar.f28130c, this.f28130c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f28128a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f28129b);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f28130c);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f28131d);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f28132e);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f28133f);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f28134g);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f28135h);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f28136i);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f28124j)) {
            return "Rotate 0°";
        }
        if (equals(f28125k)) {
            return "Rotate 90°";
        }
        if (equals(f28126l)) {
            return "Rotate 180°";
        }
        if (equals(f28127m)) {
            return "Rotate 270°";
        }
        double d = this.f28128a;
        double d2 = this.f28129b;
        double d3 = this.f28130c;
        double d4 = this.f28131d;
        double d5 = this.f28132e;
        double d6 = this.f28133f;
        double d7 = this.f28134g;
        double d8 = this.f28135h;
        double d9 = this.f28136i;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d);
        sb.append(", v=");
        sb.append(d2);
        sb.append(", w=");
        sb.append(d3);
        sb.append(", a=");
        sb.append(d4);
        sb.append(", b=");
        sb.append(d5);
        sb.append(", c=");
        sb.append(d6);
        sb.append(", d=");
        sb.append(d7);
        sb.append(", tx=");
        sb.append(d8);
        sb.append(", ty=");
        sb.append(d9);
        sb.append("}");
        return sb.toString();
    }
}
