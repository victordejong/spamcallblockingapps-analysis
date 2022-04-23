package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfb.class */
public class zzcfb extends Exception {

    /* renamed from: a */
    private final int f13062a;

    public zzcfb(int i) {
        this.f13062a = i;
    }

    public zzcfb(String str, int i) {
        super(str);
        this.f13062a = i;
    }

    public zzcfb(String str, Throwable th, int i) {
        super(str, th);
        this.f13062a = 0;
    }

    public static int zzd(Throwable th) {
        if (th instanceof zzcfb) {
            return ((zzcfb) th).f13062a;
        }
        if (th instanceof zzaxf) {
            return ((zzaxf) th).getErrorCode();
        }
        return 0;
    }

    public final int getErrorCode() {
        return this.f13062a;
    }
}
