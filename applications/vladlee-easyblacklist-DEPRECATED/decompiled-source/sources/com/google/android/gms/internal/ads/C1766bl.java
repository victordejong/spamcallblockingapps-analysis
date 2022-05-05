package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bl.class */
final class C1766bl implements zzazn {

    /* renamed from: a */
    private final /* synthetic */ zzazl f8294a;

    /* renamed from: b */
    private final /* synthetic */ zzajf f8295b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1766bl(zzazl zzazlVar, zzajf zzajfVar) {
        this.f8294a = zzazlVar;
        this.f8295b = zzajfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazn
    public final void run() {
        this.f8294a.setException(new zzajr("Unable to obtain a JavascriptEngine."));
        this.f8295b.release();
    }
}
