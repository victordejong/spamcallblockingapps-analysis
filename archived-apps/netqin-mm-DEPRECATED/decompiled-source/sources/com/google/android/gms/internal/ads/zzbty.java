package com.google.android.gms.internal.ads;

import java.util.List;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbty.class */
public final class zzbty extends zzym {

    /* renamed from: a */
    public final String f25542a;

    /* renamed from: b */
    public final String f25543b;

    /* renamed from: c */
    public final List<zzvr> f25544c;

    public zzbty(zzdnv zzdnvVar, String str, zzctd zzctdVar) {
        String str2 = null;
        this.f25543b = zzdnvVar == null ? null : zzdnvVar.f27576W;
        str2 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) ? m15041a(zzdnvVar) : str2;
        this.f25542a = str2 != null ? str2 : str;
        this.f25544c = zzctdVar.m13868a();
    }

    /* renamed from: a */
    public static String m15041a(zzdnv zzdnvVar) {
        try {
            return zzdnvVar.f27605u.getString("class_name");
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: K1 */
    public final String mo11115K1() {
        return this.f25543b;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: a */
    public final String mo11114a() {
        return this.f25542a;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: t1 */
    public final List<zzvr> mo11113t1() {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23861n4)).booleanValue()) {
            return null;
        }
        return this.f25544c;
    }
}
