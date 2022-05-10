package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.q0.o2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/o2.class */
public final /* synthetic */ class C5709o2 implements OnSuccessListener {

    /* renamed from: a */
    public final C5719q2 f18860a;

    /* renamed from: b */
    public final AbstractC5863i f18861b;

    /* renamed from: c */
    public final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason f18862c;

    public C5709o2(C5719q2 q2Var, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        this.f18860a = q2Var;
        this.f18861b = iVar;
        this.f18862c = inAppMessagingErrorReason;
    }

    /* renamed from: a */
    public static OnSuccessListener m23175a(C5719q2 q2Var, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        return new C5709o2(q2Var, iVar, inAppMessagingErrorReason);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        r0.f18882a.mo23004a(this.f18860a.m23148a(this.f18861b, (String) obj, C5719q2.f18880g.get(this.f18862c)).mo21180c());
    }
}
