package p081h.p082a.p083a.p088n;

import org.json.JSONArray;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
/* renamed from: h.a.a.n.j */
/* loaded from: classes-dex2jar.jar:h/a/a/n/j.class */
public class C5415j {

    /* renamed from: a */
    public final float f13565a;

    /* renamed from: b */
    public final float f13566b;

    /* renamed from: h.a.a.n.j$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/j$a.class */
    public static class C5416a implements AbstractC5452m.AbstractC5453a<C5415j> {

        /* renamed from: a */
        public static final C5416a f13567a = new C5416a();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public C5415j mo25373a(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            return new C5415j((((float) jSONArray.optDouble(0, 1.0d)) / 100.0f) * f, (((float) jSONArray.optDouble(1, 1.0d)) / 100.0f) * f);
        }
    }

    public C5415j() {
        this(1.0f, 1.0f);
    }

    public C5415j(float f, float f2) {
        this.f13565a = f;
        this.f13566b = f2;
    }

    /* renamed from: a */
    public float m25481a() {
        return this.f13565a;
    }

    /* renamed from: b */
    public float m25480b() {
        return this.f13566b;
    }

    public String toString() {
        return m25481a() + "x" + m25480b();
    }
}
