package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.q0.p2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/p2.class */
public final /* synthetic */ class C5714p2 implements OnSuccessListener {

    /* renamed from: a */
    public final C5719q2 f18871a;

    /* renamed from: b */
    public final AbstractC5863i f18872b;

    /* renamed from: c */
    public final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType f18873c;

    public C5714p2(C5719q2 q2Var, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        this.f18871a = q2Var;
        this.f18872b = iVar;
        this.f18873c = inAppMessagingDismissType;
    }

    /* renamed from: a */
    public static OnSuccessListener m23169a(C5719q2 q2Var, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        return new C5714p2(q2Var, iVar, inAppMessagingDismissType);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        r0.f18882a.mo23004a(this.f18871a.m23150a(this.f18872b, (String) obj, C5719q2.f18881h.get(this.f18873c)).mo21180c());
    }
}
