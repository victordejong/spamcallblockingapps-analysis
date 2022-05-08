package p081h.p082a.p083a.p088n.p090l;

import android.graphics.Path;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import com.criteo.publisher.model.C2041o;
import com.flurry.sdk.C3496r;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5367f;
import p081h.p082a.p083a.p088n.p089k.C5417a;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.a.a.n.l.m */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/m.class */
public class C5489m implements AbstractC5460b {

    /* renamed from: a */
    public final boolean f13664a;

    /* renamed from: b */
    public final Path.FillType f13665b;

    /* renamed from: c */
    public final String f13666c;
    @Nullable

    /* renamed from: d */
    public final C5417a f13667d;
    @Nullable

    /* renamed from: e */
    public final C5428d f13668e;

    /* renamed from: h.a.a.n.l.m$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/m$b.class */
    public static class C5491b {
        /* renamed from: a */
        public static C5489m m25368a(JSONObject jSONObject, C5341e eVar) {
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            JSONObject optJSONObject = jSONObject.optJSONObject("c");
            C5417a a = optJSONObject != null ? C5417a.C5419b.m25479a(optJSONObject, eVar) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject(C2041o.f2249c);
            return new C5489m(optString, jSONObject.optBoolean("fillEnabled"), jSONObject.optInt(C3496r.f6031a, 1) == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, a, optJSONObject2 != null ? C5428d.C5430b.m25471a(optJSONObject2, eVar) : null);
        }
    }

    public C5489m(String str, boolean z, Path.FillType fillType, @Nullable C5417a aVar, @Nullable C5428d dVar) {
        this.f13666c = str;
        this.f13664a = z;
        this.f13665b = fillType;
        this.f13667d = aVar;
        this.f13668e = dVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5367f(fVar, aVar, this);
    }

    @Nullable
    /* renamed from: a */
    public C5417a m25372a() {
        return this.f13667d;
    }

    /* renamed from: b */
    public Path.FillType m25371b() {
        return this.f13665b;
    }

    /* renamed from: c */
    public String m25370c() {
        return this.f13666c;
    }

    @Nullable
    /* renamed from: d */
    public C5428d m25369d() {
        return this.f13668e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ShapeFill{color=");
        C5417a aVar = this.f13667d;
        Object obj = C14247d.f31851f;
        sb.append(aVar == null ? C14247d.f31851f : Integer.toHexString(aVar.mo25439b().intValue()));
        sb.append(", fillEnabled=");
        sb.append(this.f13664a);
        sb.append(", opacity=");
        C5428d dVar = this.f13668e;
        if (dVar != null) {
            obj = dVar.mo25439b();
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
