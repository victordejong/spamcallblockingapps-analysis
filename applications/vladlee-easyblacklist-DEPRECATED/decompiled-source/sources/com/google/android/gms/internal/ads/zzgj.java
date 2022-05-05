package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgj.class */
public abstract class zzgj implements zzhe, zzhf {

    /* renamed from: a */
    private final int f14813a;

    /* renamed from: b */
    private zzhh f14814b;

    /* renamed from: c */
    private int f14815c;

    /* renamed from: d */
    private int f14816d;

    /* renamed from: e */
    private zzmo f14817e;

    /* renamed from: f */
    private long f14818f;

    /* renamed from: g */
    private boolean f14819g = true;

    /* renamed from: h */
    private boolean f14820h;

    public zzgj(int i) {
        this.f14813a = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final int m3254a(zzgy zzgyVar, zzis zzisVar, boolean z) {
        int zzb = this.f14817e.zzb(zzgyVar, zzisVar, z);
        if (zzb == -4) {
            if (zzisVar.zzgb()) {
                this.f14819g = true;
                return this.f14820h ? -4 : -3;
            }
            zzisVar.zzamd += this.f14818f;
        } else if (zzb == -5) {
            zzgw zzgwVar = zzgyVar.zzafz;
            if (zzgwVar.zzaft != Long.MAX_VALUE) {
                zzgyVar.zzafz = zzgwVar.zzds(zzgwVar.zzaft + this.f14818f);
            }
        }
        return zzb;
    }

    /* renamed from: a */
    protected void mo3161a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m3255a(long j) {
        this.f14817e.zzeh(j - this.f14818f);
    }

    /* renamed from: a */
    protected void mo3159a(long j, boolean z) {
    }

    /* renamed from: a */
    protected void mo3149a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo3147a(zzgw[] zzgwVarArr, long j) {
    }

    /* renamed from: b */
    protected void mo3146b() {
    }

    /* renamed from: c */
    protected void mo3140c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final zzhh m3253d() {
        return this.f14814b;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void disable() {
        boolean z = true;
        if (this.f14816d != 1) {
            z = false;
        }
        zzoc.checkState(z);
        this.f14816d = 0;
        this.f14817e = null;
        this.f14820h = false;
        mo3140c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public final int m3252e() {
        return this.f14815c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final boolean m3251f() {
        return this.f14819g ? this.f14820h : this.f14817e.isReady();
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final int getState() {
        return this.f14816d;
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zzhf
    public final int getTrackType() {
        return this.f14813a;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void setIndex(int i) {
        this.f14815c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void start() {
        boolean z = true;
        if (this.f14816d != 1) {
            z = false;
        }
        zzoc.checkState(z);
        this.f14816d = 2;
        mo3161a();
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void stop() {
        zzoc.checkState(this.f14816d == 2);
        this.f14816d = 1;
        mo3146b();
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    public void zza(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zza(zzhh zzhhVar, zzgw[] zzgwVarArr, zzmo zzmoVar, long j, boolean z, long j2) {
        zzoc.checkState(this.f14816d == 0);
        this.f14814b = zzhhVar;
        this.f14816d = 1;
        mo3149a(z);
        zza(zzgwVarArr, zzmoVar, j2);
        mo3159a(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zza(zzgw[] zzgwVarArr, zzmo zzmoVar, long j) {
        zzoc.checkState(!this.f14820h);
        this.f14817e = zzmoVar;
        this.f14819g = false;
        this.f14818f = j;
        mo3147a(zzgwVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zzdo(long j) {
        this.f14820h = false;
        this.f14819g = false;
        mo3159a(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final zzhe zzdp() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public zzog zzdq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final zzmo zzdr() {
        return this.f14817e;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final boolean zzds() {
        return this.f14819g;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zzdt() {
        this.f14820h = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final boolean zzdu() {
        return this.f14820h;
    }

    @Override // com.google.android.gms.internal.ads.zzhf
    public final void zzdv() {
        this.f14817e.zzhk();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public int zzdw() {
        return 0;
    }
}
