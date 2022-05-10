package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahy;
import com.google.android.gms.internal.ads.zzalu;
import com.google.android.gms.internal.ads.zzalv;
import com.google.android.gms.internal.ads.zzamn;
import com.google.android.gms.internal.ads.zzbcg;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.p2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p2.class */
public final class C3901p2 implements zzahy {

    /* renamed from: a */
    public final zzbcg<O> f14379a;

    /* renamed from: b */
    public final /* synthetic */ zzamn f14380b;

    public C3901p2(zzamn zzamnVar, zzbcg<O> zzbcgVar) {
        this.f14380b = zzamnVar;
        this.f14379a = zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    /* renamed from: a */
    public final void mo16746a(String str) {
        try {
            if (str == null) {
                this.f14379a.m15834a(new zzalu());
            } else {
                this.f14379a.m15834a(new zzalu(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    /* renamed from: a */
    public final void mo16745a(JSONObject jSONObject) {
        zzalv zzalvVar;
        try {
            zzbcg<O> zzbcgVar = this.f14379a;
            zzalvVar = this.f14380b.f24191a;
            zzbcgVar.m15835a((zzbcg<O>) zzalvVar.mo16669a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f14379a.m15834a(e2);
        }
    }
}
