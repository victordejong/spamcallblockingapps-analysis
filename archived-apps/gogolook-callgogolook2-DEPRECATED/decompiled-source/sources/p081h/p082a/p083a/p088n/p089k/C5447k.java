package p081h.p082a.p083a.p088n.p089k;

import androidx.annotation.Nullable;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p088n.p089k.C5417a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
/* renamed from: h.a.a.n.k.k */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/k.class */
public class C5447k {
    @Nullable

    /* renamed from: a */
    public final C5417a f13578a;
    @Nullable

    /* renamed from: b */
    public final C5417a f13579b;
    @Nullable

    /* renamed from: c */
    public final C5420b f13580c;
    @Nullable

    /* renamed from: d */
    public final C5420b f13581d;

    /* renamed from: h.a.a.n.k.k$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/k$a.class */
    public static final class C5448a {
        /* renamed from: a */
        public static C5447k m25458a(JSONObject jSONObject, C5341e eVar) {
            C5420b bVar = null;
            if (jSONObject == null || !jSONObject.has("a")) {
                return new C5447k(null, null, null, null);
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("a");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("fc");
            C5417a a = optJSONObject2 != null ? C5417a.C5419b.m25479a(optJSONObject2, eVar) : null;
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("sc");
            C5417a a2 = optJSONObject3 != null ? C5417a.C5419b.m25479a(optJSONObject3, eVar) : null;
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("sw");
            C5420b a3 = optJSONObject4 != null ? C5420b.C5422b.m25477a(optJSONObject4, eVar) : null;
            JSONObject optJSONObject5 = optJSONObject.optJSONObject("t");
            if (optJSONObject5 != null) {
                bVar = C5420b.C5422b.m25477a(optJSONObject5, eVar);
            }
            return new C5447k(a, a2, a3, bVar);
        }
    }

    public C5447k(@Nullable C5417a aVar, @Nullable C5417a aVar2, @Nullable C5420b bVar, @Nullable C5420b bVar2) {
        this.f13578a = aVar;
        this.f13579b = aVar2;
        this.f13580c = bVar;
        this.f13581d = bVar2;
    }
}
