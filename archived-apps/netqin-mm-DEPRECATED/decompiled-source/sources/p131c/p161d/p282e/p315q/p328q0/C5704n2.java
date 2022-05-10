package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.EventType;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.q0.n2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/n2.class */
public final /* synthetic */ class C5704n2 implements OnSuccessListener {

    /* renamed from: a */
    public final C5719q2 f18852a;

    /* renamed from: b */
    public final AbstractC5863i f18853b;

    public C5704n2(C5719q2 q2Var, AbstractC5863i iVar) {
        this.f18852a = q2Var;
        this.f18853b = iVar;
    }

    /* renamed from: a */
    public static OnSuccessListener m23181a(C5719q2 q2Var, AbstractC5863i iVar) {
        return new C5704n2(q2Var, iVar);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        r0.f18882a.mo23004a(this.f18852a.m23149a(this.f18853b, (String) obj, EventType.CLICK_EVENT_TYPE).mo21180c());
    }
}
