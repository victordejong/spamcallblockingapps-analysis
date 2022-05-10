package p131c.p372f.p373a.p374a.p375a.p379k;

import android.view.View;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p376h.C6416a;
import p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
/* renamed from: c.f.a.a.a.k.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/k/b.class */
public class C6421b implements AbstractC6423d {

    /* renamed from: a */
    public final AbstractC6423d f20103a;

    public C6421b(AbstractC6423d dVar) {
        this.f20103a = dVar;
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d
    /* renamed from: a */
    public void mo20908a(View view, JSONObject jSONObject, AbstractC6423d.AbstractC6424a aVar, boolean z) {
        for (View view2 : C6416a.m20917c().m20920b()) {
            aVar.mo20907a(view2, this.f20103a, jSONObject);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d
    public JSONObject getState(View view) {
        return C6454b.m20837a(0, 0, 0, 0);
    }
}
