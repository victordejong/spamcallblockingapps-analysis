package p131c.p161d.p282e.p315q;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import p131c.p161d.p282e.p315q.p328q0.C5678i2;
import p131c.p161d.p282e.p315q.p328q0.C5694l2;
import p131c.p161d.p282e.p315q.p328q0.C5701n;
import p131c.p161d.p282e.p315q.p328q0.C5727r2;
import p131c.p161d.p282e.p315q.p328q0.C5730s;
import p131c.p161d.p282e.p315q.p328q0.C5810t;
import p131c.p161d.p282e.p315q.p333r0.C5877o;
import p131c.p161d.p282e.p335s.AbstractC5898g;
/* renamed from: c.d.e.q.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r.class */
public class C5841r {

    /* renamed from: a */
    public final C5810t f19107a;

    /* renamed from: b */
    public final C5730s f19108b;

    /* renamed from: c */
    public boolean f19109c = false;

    /* renamed from: d */
    public FirebaseInAppMessagingDisplay f19110d;

    @VisibleForTesting
    public C5841r(C5678i2 i2Var, C5727r2 r2Var, C5701n nVar, AbstractC5898g gVar, C5810t tVar, C5730s sVar) {
        this.f19107a = tVar;
        this.f19108b = sVar;
        gVar.getId().mo8613a(C5524p.m23632a());
        i2Var.m23290a().m1956b(C5631q.m23368a(this));
    }

    /* renamed from: a */
    public final void m22920a(C5877o oVar) {
        FirebaseInAppMessagingDisplay firebaseInAppMessagingDisplay = this.f19110d;
        if (firebaseInAppMessagingDisplay != null) {
            firebaseInAppMessagingDisplay.displayMessage(oVar.m22824a(), this.f19107a.m22980a(oVar.m22824a(), oVar.m22823b()));
        }
    }

    /* renamed from: a */
    public void m22918a(FirebaseInAppMessagingDisplay firebaseInAppMessagingDisplay) {
        C5694l2.m23214c("Setting display event component");
        this.f19110d = firebaseInAppMessagingDisplay;
    }

    /* renamed from: a */
    public boolean m22921a() {
        return this.f19109c;
    }

    /* renamed from: b */
    public void m22916b() {
        C5694l2.m23214c("Removing display event component");
        this.f19110d = null;
    }

    /* renamed from: c */
    public void m22915c() {
        this.f19108b.m23122a();
    }
}
