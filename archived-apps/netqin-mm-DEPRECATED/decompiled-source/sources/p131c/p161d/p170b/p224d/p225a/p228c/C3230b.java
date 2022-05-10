package p131c.p161d.p170b.p224d.p225a.p228c;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import org.json.JSONObject;
/* renamed from: c.d.b.d.a.c.b */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/b.class */
public final /* synthetic */ class C3230b implements zzdya {

    /* renamed from: a */
    public static final zzdya f11919a = new C3230b();

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final zzdzc mo13006d(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzp.m17965g().m16176i().mo16071a(jSONObject.getString("appSettingsJson"));
        }
        return zzdyq.m12988a((Object) null);
    }
}
