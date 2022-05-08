package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bt.class */
public final class C1774bt implements zzafv {

    /* renamed from: a */
    private final zzazl<O> f8311a;

    /* renamed from: b */
    private final /* synthetic */ zzako f8312b;

    public C1774bt(zzako zzakoVar, zzazl<O> zzazlVar) {
        this.f8312b = zzakoVar;
        this.f8311a = zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.f8311a.setException(new zzajr());
            } else {
                this.f8311a.setException(new zzajr(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void zzc(JSONObject jSONObject) {
        zzajw zzajwVar;
        try {
            zzazl<O> zzazlVar = this.f8311a;
            zzajwVar = this.f8312b.f10974a;
            zzazlVar.set(zzajwVar.zzd(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f8311a.setException(e2);
        }
    }
}
