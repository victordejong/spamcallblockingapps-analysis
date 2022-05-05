package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbey.class */
public final class zzbey {

    /* renamed from: a */
    private final int f11781a;
    public final int heightPixels;
    public final int widthPixels;

    private zzbey(int i, int i2, int i3) {
        this.f11781a = i;
        this.widthPixels = i2;
        this.heightPixels = i3;
    }

    public static zzbey zzabq() {
        return new zzbey(0, 0, 0);
    }

    public static zzbey zzabr() {
        return new zzbey(4, 0, 0);
    }

    public static zzbey zzabs() {
        return new zzbey(5, 0, 0);
    }

    public static zzbey zzb(zzuj zzujVar) {
        return zzujVar.zzcco ? new zzbey(3, 0, 0) : zzujVar.zzccq ? new zzbey(2, 0, 0) : zzujVar.zzbmc ? zzabq() : zzq(zzujVar.widthPixels, zzujVar.heightPixels);
    }

    public static zzbey zzq(int i, int i2) {
        return new zzbey(1, i, i2);
    }

    public final boolean isFluid() {
        return this.f11781a == 2;
    }

    public final boolean zzabt() {
        return this.f11781a == 3;
    }

    public final boolean zzabu() {
        return this.f11781a == 0;
    }

    public final boolean zzabv() {
        return this.f11781a == 4;
    }

    public final boolean zzabw() {
        return this.f11781a == 5;
    }
}
