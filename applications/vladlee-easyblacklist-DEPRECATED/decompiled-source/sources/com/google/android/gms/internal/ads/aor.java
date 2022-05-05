package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aor.class */
final class aor implements zznx {

    /* renamed from: a */
    private final Uri f8036a;

    /* renamed from: b */
    private final zznl f8037b;

    /* renamed from: c */
    private final aoq f8038c;

    /* renamed from: d */
    private final zzoe f8039d;

    /* renamed from: f */
    private volatile boolean f8041f;

    /* renamed from: h */
    private long f8043h;

    /* renamed from: j */
    private final /* synthetic */ aol f8045j;

    /* renamed from: e */
    private final zzjj f8040e = new zzjj();

    /* renamed from: g */
    private boolean f8042g = true;

    /* renamed from: i */
    private long f8044i = -1;

    public aor(aol aolVar, Uri uri, zznl zznlVar, aoq aoqVar, zzoe zzoeVar) {
        this.f8045j = aolVar;
        this.f8036a = (Uri) zzoc.checkNotNull(uri);
        this.f8037b = (zznl) zzoc.checkNotNull(zznlVar);
        this.f8038c = (aoq) zzoc.checkNotNull(aoqVar);
        this.f8039d = zzoeVar;
    }

    /* renamed from: a */
    public final void m4794a(long j, long j2) {
        this.f8040e.zzamw = j;
        this.f8043h = j2;
        this.f8042g = true;
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final void cancelLoad() {
        this.f8041f = true;
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final boolean zzhp() {
        return this.f8041f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zznx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzhq() {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aor.zzhq():void");
    }
}
