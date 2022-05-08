package p081h.p082a.p083a.p088n.p089k;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
/* renamed from: h.a.a.n.k.n */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/n.class */
public class C5454n<T> {
    @Nullable

    /* renamed from: a */
    public final JSONObject f13589a;

    /* renamed from: b */
    public final float f13590b;

    /* renamed from: c */
    public final C5341e f13591c;

    /* renamed from: d */
    public final AbstractC5452m.AbstractC5453a<T> f13592d;

    /* renamed from: h.a.a.n.k.n$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/n$a.class */
    public static class C5455a<T> {

        /* renamed from: a */
        public final List<C5358a<T>> f13593a;
        @Nullable

        /* renamed from: b */
        public final T f13594b;

        public C5455a(List<C5358a<T>> list, @Nullable T t) {
            this.f13593a = list;
            this.f13594b = t;
        }
    }

    public C5454n(@Nullable JSONObject jSONObject, float f, C5341e eVar, AbstractC5452m.AbstractC5453a<T> aVar) {
        this.f13589a = jSONObject;
        this.f13590b = f;
        this.f13591c = eVar;
        this.f13592d = aVar;
    }

    /* renamed from: a */
    public static <T> C5454n<T> m25442a(@Nullable JSONObject jSONObject, float f, C5341e eVar, AbstractC5452m.AbstractC5453a<T> aVar) {
        return new C5454n<>(jSONObject, f, eVar, aVar);
    }

    /* renamed from: a */
    public static boolean m25444a(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object opt = ((JSONArray) obj).opt(0);
        boolean z = false;
        if (opt instanceof JSONObject) {
            z = false;
            if (((JSONObject) opt).has("t")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public C5455a<T> m25445a() {
        List<C5358a<T>> b = m25441b();
        return new C5455a<>(b, m25443a((List) b));
    }

    @Nullable
    /* renamed from: a */
    public final T m25443a(List<C5358a<T>> list) {
        if (this.f13589a != null) {
            return !list.isEmpty() ? list.get(0).f13377b : this.f13592d.mo25373a(this.f13589a.opt("k"), this.f13590b);
        }
        return null;
    }

    /* renamed from: b */
    public final List<C5358a<T>> m25441b() {
        JSONObject jSONObject = this.f13589a;
        if (jSONObject == null) {
            return Collections.emptyList();
        }
        Object opt = jSONObject.opt("k");
        return m25444a(opt) ? C5358a.C5359a.m25560a((JSONArray) opt, this.f13591c, this.f13590b, this.f13592d) : Collections.emptyList();
    }
}
