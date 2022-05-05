package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeg.class */
public abstract class zzeg {

    /* renamed from: a */
    int f16202a;

    /* renamed from: b */
    int f16203b;

    /* renamed from: c */
    C2525cg f16204c;

    /* renamed from: d */
    private int f16205d;

    /* renamed from: e */
    private boolean f16206e;

    private zzeg() {
        this.f16203b = 100;
        this.f16205d = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f16206e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzeg(byte b) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzeg m2301a(byte[] bArr, int i) {
        C2523ce ceVar = new C2523ce(bArr, i, (byte) 0);
        try {
            ceVar.zzc(i);
            return ceVar;
        } catch (zzfo e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static long zza(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static int zze(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract long mo2302a();

    public abstract int zza();

    public abstract void zza(int i);

    public abstract double zzb();

    public abstract boolean zzb(int i);

    public abstract float zzc();

    public abstract int zzc(int i);

    public abstract long zzd();

    public abstract void zzd(int i);

    public abstract long zze();

    public abstract int zzf();

    public abstract long zzg();

    public abstract int zzh();

    public abstract boolean zzi();

    public abstract String zzj();

    public abstract String zzk();

    public abstract zzdu zzl();

    public abstract int zzm();

    public abstract int zzn();

    public abstract int zzo();

    public abstract long zzp();

    public abstract int zzq();

    public abstract long zzr();

    public abstract boolean zzt();

    public abstract int zzu();
}
