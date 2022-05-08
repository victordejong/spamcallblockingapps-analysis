package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcz.class */
public final class zzbcz extends zzbcn implements zznz<zznl> {

    /* renamed from: d */
    private String f11724d;

    /* renamed from: e */
    private final zzbaw f11725e;

    /* renamed from: f */
    private boolean f11726f;

    /* renamed from: i */
    private ByteBuffer f11729i;

    /* renamed from: j */
    private boolean f11730j;

    /* renamed from: l */
    private boolean f11732l;

    /* renamed from: g */
    private final C1951ih f11727g = new C1951ih();

    /* renamed from: h */
    private final zzbcf f11728h = new zzbcf();

    /* renamed from: k */
    private final Object f11731k = new Object();

    public zzbcz(zzbaz zzbazVar, zzbaw zzbawVar) {
        super(zzbazVar);
        this.f11725e = zzbawVar;
    }

    /* renamed from: a */
    private final void m4123a() {
        int a = (int) this.f11727g.m4706a();
        int zzl = (int) this.f11728h.zzl(this.f11729i);
        int position = this.f11729i.position();
        int round = Math.round(zzl * (position / a));
        boolean z = round > 0;
        int zzzn = zzbbs.zzzn();
        int zzzo = zzbbs.zzzo();
        String str = this.f11724d;
        zza(str, mo4122a(str), position, a, round, zzl, z, zzzn, zzzo);
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
        this.f11726f = true;
    }

    public final ByteBuffer getByteBuffer() {
        synchronized (this.f11731k) {
            if (this.f11729i != null && !this.f11730j) {
                this.f11729i.flip();
                this.f11730j = true;
            }
            this.f11726f = true;
        }
        return this.f11729i;
    }

    public final String getUrl() {
        return this.f11724d;
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* synthetic */ void zza(zznl zznlVar, zznq zznqVar) {
        zznl zznlVar2 = zznlVar;
        if (zznlVar2 instanceof zzns) {
            this.f11727g.m4705a((zzns) zznlVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* bridge */ /* synthetic */ void zzc(zznl zznlVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zznz
    public final /* bridge */ /* synthetic */ void zze(zznl zznlVar) {
    }

    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:152:? -> B:140:0x02bf). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbcn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzfi(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcz.zzfi(java.lang.String):boolean");
    }

    public final boolean zzzs() {
        return this.f11732l;
    }
}
