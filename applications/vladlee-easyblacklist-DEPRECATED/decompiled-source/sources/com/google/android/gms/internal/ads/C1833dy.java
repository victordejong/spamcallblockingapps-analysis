package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.dy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dy.class */
final /* synthetic */ class C1833dy implements AbstractC1842eg {

    /* renamed from: a */
    static final AbstractC1842eg f8409a = new C1833dy();

    private C1833dy() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1842eg
    /* renamed from: a */
    public final Object mo4734a(zzbfq zzbfqVar) {
        String currentScreenName = zzbfqVar.getCurrentScreenName();
        if (currentScreenName != null) {
            return currentScreenName;
        }
        String currentScreenClass = zzbfqVar.getCurrentScreenClass();
        return currentScreenClass != null ? currentScreenClass : "";
    }
}
