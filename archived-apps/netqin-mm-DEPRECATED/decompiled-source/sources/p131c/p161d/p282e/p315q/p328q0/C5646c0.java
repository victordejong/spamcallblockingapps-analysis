package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p530d.p541c.p542a0.AbstractC9638a;
/* renamed from: c.d.e.q.q0.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/c0.class */
public final /* synthetic */ class C5646c0 implements AbstractC9638a {

    /* renamed from: a */
    public final C5671h0 f18724a;

    /* renamed from: b */
    public final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason f18725b;

    public C5646c0(C5671h0 h0Var, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        this.f18724a = h0Var;
        this.f18725b = inAppMessagingErrorReason;
    }

    /* renamed from: a */
    public static AbstractC9638a m23343a(C5671h0 h0Var, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        return new C5646c0(h0Var, inAppMessagingErrorReason);
    }

    @Override // p530d.p541c.p542a0.AbstractC9638a
    public void run() {
        r0.f18766f.m23152a(this.f18724a.f18768h, this.f18725b);
    }
}
