package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s.class */
public final class C2213s implements zzafv {

    /* renamed from: a */
    private final /* synthetic */ zzazl f10447a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2213s(zzazl zzazlVar) {
        this.f10447a = zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void onFailure(String str) {
        this.f10447a.setException(new zzajr(str));
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void zzc(JSONObject jSONObject) {
        this.f10447a.set(jSONObject);
    }
}
