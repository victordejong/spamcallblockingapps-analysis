package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqw.class */
public abstract class zzdqw {

    /* renamed from: a */
    int f14466a;

    /* renamed from: b */
    int f14467b;

    /* renamed from: c */
    int f14468c;

    /* renamed from: d */
    ahr f14469d;

    /* renamed from: e */
    private boolean f14470e;

    private zzdqw() {
        this.f14467b = 100;
        this.f14468c = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f14470e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdqw(byte b) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdqw m3393a(byte[] bArr, int i, int i2, boolean z) {
        ahq ahqVar = new ahq(bArr, i, i2, z, (byte) 0);
        try {
            ahqVar.zzfj(i2);
            return ahqVar;
        } catch (zzdse e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static long zzff(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static int zzfl(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract long mo3394a();

    public abstract double readDouble();

    public abstract float readFloat();

    public abstract String readString();

    public abstract int zzayc();

    public abstract long zzayd();

    public abstract long zzaye();

    public abstract int zzayf();

    public abstract long zzayg();

    public abstract int zzayh();

    public abstract boolean zzayi();

    public abstract String zzayj();

    public abstract zzdqk zzayk();

    public abstract int zzayl();

    public abstract int zzaym();

    public abstract int zzayn();

    public abstract long zzayo();

    public abstract int zzayp();

    public abstract long zzayq();

    public abstract boolean zzays();

    public abstract int zzayt();

    public abstract void zzfh(int i);

    public abstract boolean zzfi(int i);

    public abstract int zzfj(int i);

    public abstract void zzfk(int i);
}
