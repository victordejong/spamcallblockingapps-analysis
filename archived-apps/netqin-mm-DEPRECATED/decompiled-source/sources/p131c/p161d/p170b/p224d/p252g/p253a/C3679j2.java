package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahy;
import com.google.android.gms.internal.ads.zzali;
import com.google.android.gms.internal.ads.zzalu;
import com.google.android.gms.internal.ads.zzalv;
import com.google.android.gms.internal.ads.zzamg;
import com.google.android.gms.internal.ads.zzbcg;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.j2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j2.class */
public final class C3679j2 implements zzahy {

    /* renamed from: a */
    public final zzali f13576a;

    /* renamed from: b */
    public final zzbcg<O> f13577b;

    /* renamed from: c */
    public final /* synthetic */ zzamg f13578c;

    public C3679j2(zzamg zzamgVar, zzali zzaliVar, zzbcg<O> zzbcgVar) {
        this.f13578c = zzamgVar;
        this.f13576a = zzaliVar;
        this.f13577b = zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    /* renamed from: a */
    public final void mo16746a(String str) {
        try {
            if (str == null) {
                this.f13577b.m15834a(new zzalu());
            } else {
                this.f13577b.m15834a(new zzalu(str));
            }
        } catch (IllegalStateException e) {
        } finally {
            this.f13576a.m16679c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    /* renamed from: a */
    public final void mo16745a(JSONObject jSONObject) {
        zzalv zzalvVar;
        try {
            zzbcg<O> zzbcgVar = this.f13577b;
            zzalvVar = this.f13578c.f24185a;
            zzbcgVar.m15835a((zzbcg<O>) zzalvVar.mo16669a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f13577b.m15834a(e2);
        } finally {
            this.f13576a.m16679c();
        }
    }
}
