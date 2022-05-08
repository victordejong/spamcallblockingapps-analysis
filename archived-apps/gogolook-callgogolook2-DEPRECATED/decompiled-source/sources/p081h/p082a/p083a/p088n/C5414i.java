package p081h.p082a.p083a.p088n;

import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p092o.C5524b;
/* renamed from: h.a.a.n.i */
/* loaded from: classes-dex2jar.jar:h/a/a/n/i.class */
public class C5414i implements AbstractC5452m.AbstractC5453a<PointF> {

    /* renamed from: a */
    public static final C5414i f13564a = new C5414i();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
    /* renamed from: a */
    public PointF mo25373a(Object obj, float f) {
        if (obj instanceof JSONArray) {
            return C5524b.m25279a((JSONArray) obj, f);
        }
        if (obj instanceof JSONObject) {
            return C5524b.m25278a((JSONObject) obj, f);
        }
        throw new IllegalArgumentException("Unable to parse point from " + obj);
    }
}
