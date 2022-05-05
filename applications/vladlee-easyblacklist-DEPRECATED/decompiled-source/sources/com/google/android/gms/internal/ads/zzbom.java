package com.google.android.gms.internal.ads;

import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbom.class */
public final class zzbom extends zzwz {

    /* renamed from: a */
    private final String f12239a;

    /* renamed from: b */
    private final String f12240b;

    public zzbom(zzczl zzczlVar, String str) {
        this.f12240b = zzczlVar == null ? null : zzczlVar.zzfhk;
        String a = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? m3998a(zzczlVar) : null;
        this.f12239a = a == null ? str : a;
    }

    /* renamed from: a */
    private static String m3998a(zzczl zzczlVar) {
        try {
            return zzczlVar.zzglr.getString("class_name");
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final String getMediationAdapterClassName() {
        return this.f12239a;
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final String zzpj() {
        return this.f12240b;
    }
}
