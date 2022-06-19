package p193e.p194a.p749f3;

import com.truecaller.callbubbles.CallBubblesContainerView;
import java.util.concurrent.CancellationException;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.p */
/* loaded from: classes6-dex2jar.jar:e/a/f3/p.class */
public final class C13922p extends m implements l<CallBubblesContainerView, s> {

    /* renamed from: b */
    public final /* synthetic */ C13919o f40324b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13922p(C13919o c13919o) {
        super(1);
        this.f40324b = c13919o;
    }

    /* renamed from: d */
    public Object m20963d(Object obj) {
        CallBubblesContainerView callBubblesContainerView = (CallBubblesContainerView) obj;
        s1.z.c.l.e(callBubblesContainerView, "bubbleView");
        callBubblesContainerView.m35790l();
        d.R(this.f40324b.getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        return s.a;
    }
}
