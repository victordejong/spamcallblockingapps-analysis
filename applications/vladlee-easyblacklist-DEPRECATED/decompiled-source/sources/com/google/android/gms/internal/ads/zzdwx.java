package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwx.class */
public final class zzdwx {

    /* renamed from: a */
    private final double f14700a;

    /* renamed from: b */
    private final double f14701b;

    /* renamed from: c */
    private final double f14702c;

    /* renamed from: d */
    private final double f14703d;

    /* renamed from: e */
    private final double f14704e;

    /* renamed from: f */
    private final double f14705f;

    /* renamed from: g */
    private final double f14706g;

    /* renamed from: h */
    private final double f14707h;

    /* renamed from: i */
    private final double f14708i;
    public static final zzdwx zzhzt = new zzdwx(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: j */
    private static final zzdwx f14697j = new zzdwx(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    private static final zzdwx f14698k = new zzdwx(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    private static final zzdwx f14699l = new zzdwx(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    private zzdwx(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f14700a = d5;
        this.f14701b = d6;
        this.f14702c = d7;
        this.f14703d = d;
        this.f14704e = d2;
        this.f14705f = d3;
        this.f14706g = d4;
        this.f14707h = d8;
        this.f14708i = d9;
    }

    public static zzdwx zzp(ByteBuffer byteBuffer) {
        double zzd = zzbg.zzd(byteBuffer);
        double zzd2 = zzbg.zzd(byteBuffer);
        double zze = zzbg.zze(byteBuffer);
        return new zzdwx(zzd, zzd2, zzbg.zzd(byteBuffer), zzbg.zzd(byteBuffer), zze, zzbg.zze(byteBuffer), zzbg.zze(byteBuffer), zzbg.zzd(byteBuffer), zzbg.zzd(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzdwx zzdwxVar = (zzdwx) obj;
        return Double.compare(zzdwxVar.f14703d, this.f14703d) == 0 && Double.compare(zzdwxVar.f14704e, this.f14704e) == 0 && Double.compare(zzdwxVar.f14705f, this.f14705f) == 0 && Double.compare(zzdwxVar.f14706g, this.f14706g) == 0 && Double.compare(zzdwxVar.f14707h, this.f14707h) == 0 && Double.compare(zzdwxVar.f14708i, this.f14708i) == 0 && Double.compare(zzdwxVar.f14700a, this.f14700a) == 0 && Double.compare(zzdwxVar.f14701b, this.f14701b) == 0 && Double.compare(zzdwxVar.f14702c, this.f14702c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f14700a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f14701b);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f14702c);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f14703d);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f14704e);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f14705f);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f14706g);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f14707h);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f14708i);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(zzhzt)) {
            return "Rotate 0°";
        }
        if (equals(f14697j)) {
            return "Rotate 90°";
        }
        if (equals(f14698k)) {
            return "Rotate 180°";
        }
        if (equals(f14699l)) {
            return "Rotate 270°";
        }
        double d = this.f14700a;
        double d2 = this.f14701b;
        double d3 = this.f14702c;
        double d4 = this.f14703d;
        double d5 = this.f14704e;
        double d6 = this.f14705f;
        double d7 = this.f14706g;
        double d8 = this.f14707h;
        double d9 = this.f14708i;
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
