package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.he */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/he.class */
public final class C2832he {

    /* renamed from: a */
    private long f17011a;

    /* renamed from: b */
    private long f17012b;

    /* renamed from: c */
    private final AbstractC2773f f17013c;

    /* renamed from: d */
    private final /* synthetic */ zzjo f17014d;

    public C2832he(zzjo zzjoVar) {
        this.f17014d = zzjoVar;
        this.f17013c = new C2831hd(this, this.f17014d.f16804x);
        this.f17011a = zzjoVar.zzm().elapsedRealtime();
        this.f17012b = this.f17011a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m2036a(C2832he heVar) {
        heVar.f17014d.zzd();
        heVar.m2035a(false, false);
        heVar.f17014d.zze().zza(heVar.f17014d.zzm().elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2038a() {
        this.f17013c.m2052c();
        this.f17011a = 0L;
        this.f17012b = this.f17011a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2037a(long j) {
        this.f17014d.zzd();
        this.f17013c.m2052c();
        this.f17011a = j;
        this.f17012b = this.f17011a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f2, code lost:
        if (r10 == false) goto L_0x0107;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2035a(boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2832he.m2035a(boolean, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final long m2034b() {
        long elapsedRealtime = this.f17014d.zzm().elapsedRealtime();
        long j = this.f17012b;
        this.f17012b = elapsedRealtime;
        return elapsedRealtime - j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m2033b(long j) {
        this.f17013c.m2052c();
        if (this.f17011a != 0) {
            this.f17014d.zzs().f16694r.zza(this.f17014d.zzs().f16694r.zza() + (j - this.f17011a));
        }
    }
}
