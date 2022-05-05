package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bn.class */
public final class C1768bn implements zzafv {

    /* renamed from: a */
    private final zzajf f8300a;

    /* renamed from: b */
    private final zzazl<O> f8301b;

    /* renamed from: c */
    private final /* synthetic */ zzakd f8302c;

    public C1768bn(zzakd zzakdVar, zzajf zzajfVar, zzazl<O> zzazlVar) {
        this.f8302c = zzakdVar;
        this.f8300a = zzajfVar;
        this.f8301b = zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.f8301b.setException(new zzajr());
            } else {
                this.f8301b.setException(new zzajr(str));
            }
        } catch (IllegalStateException e) {
        } catch (Throwable th) {
            this.f8300a.release();
            throw th;
        }
        this.f8300a.release();
    }

    @Override // com.google.android.gms.internal.ads.zzafv
    public final void zzc(JSONObject jSONObject) {
        zzajw zzajwVar;
        try {
            try {
                zzazl<O> zzazlVar = this.f8301b;
                zzajwVar = this.f8302c.f10968a;
                zzazlVar.set(zzajwVar.zzd(jSONObject));
            } catch (IllegalStateException e) {
            } catch (JSONException e2) {
                this.f8301b.setException(e2);
            }
        } finally {
            this.f8300a.release();
        }
    }
}
