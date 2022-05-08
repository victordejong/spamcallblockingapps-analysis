package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcy.class */
public final class zzbcy extends zzbcn implements zzbca {

    /* renamed from: d */
    private zzbbs f11719d;

    /* renamed from: e */
    private String f11720e;

    /* renamed from: f */
    private boolean f11721f;

    /* renamed from: g */
    private Exception f11722g;

    /* renamed from: h */
    private boolean f11723h;

    public zzbcy(zzbaz zzbazVar, zzbaw zzbawVar) {
        super(zzbazVar);
        this.f11719d = new zzbbs(zzbazVar.getContext(), zzbawVar);
        this.f11719d.zza(this);
    }

    /* renamed from: a */
    private static String m4125a(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    /* renamed from: c */
    private final void m4124c(String str) {
        synchronized (this) {
            this.f11721f = true;
            notify();
            release();
        }
        String str2 = this.f11720e;
        if (str2 != null) {
            String a = mo4122a(str2);
            Exception exc = this.f11722g;
            if (exc != null) {
                zza(this.f11720e, a, "badUrl", m4125a(str, exc));
            } else {
                zza(this.f11720e, a, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbcn
    /* renamed from: a */
    public final String mo4122a(String str) {
        String valueOf = String.valueOf(super.mo4122a(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void abort() {
        m4124c(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzbbs zzbbsVar = this.f11719d;
        if (zzbbsVar != null) {
            zzbbsVar.zza((zzbca) null);
            this.f11719d.release();
        }
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zza(String str, Exception exc) {
        String str2 = (String) zzve.zzoy().zzd(zzzn.zzcgs);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.f11722g = exc;
        zzavs.zzd("Precache error", exc);
        m4124c(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzb(final boolean z, final long j) {
        final zzbaz zzbazVar = this.f11714c.get();
        if (zzbazVar != null) {
            zzazd.zzdwi.execute(new Runnable(zzbazVar, z, j) { // from class: com.google.android.gms.internal.ads.ii

                /* renamed from: a */
                private final zzbaz f8629a;

                /* renamed from: b */
                private final boolean f8630b;

                /* renamed from: c */
                private final long f8631c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8629a = zzbazVar;
                    this.f8630b = z;
                    this.f8631c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8629a.zza(this.f8630b, this.f8631c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzcv(int i) {
        this.f11719d.zzzp().zzdc(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzcw(int i) {
        this.f11719d.zzzp().zzdd(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzcx(int i) {
        this.f11719d.zzzp().zzcx(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void zzcy(int i) {
        this.f11719d.zzzp().zzcy(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzda(int i) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.ads.zzbcy, java.lang.Object, com.google.android.gms.internal.ads.zzbcn] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r29v11 */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzbcn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(java.lang.String r12, java.lang.String[] r13) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcy.zze(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final boolean zzfi(String str) {
        return zze(str, new String[]{str});
    }

    @Override // com.google.android.gms.internal.ads.zzbca
    public final void zzn(int i, int i2) {
    }

    public final zzbbs zzzr() {
        synchronized (this) {
            this.f11723h = true;
            notify();
        }
        this.f11719d.zza((zzbca) null);
        zzbbs zzbbsVar = this.f11719d;
        this.f11719d = null;
        return zzbbsVar;
    }
}
