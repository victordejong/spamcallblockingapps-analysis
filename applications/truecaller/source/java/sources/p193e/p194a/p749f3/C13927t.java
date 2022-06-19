package p193e.p194a.p749f3;

import com.truecaller.callbubbles.CallBubblesContainerView;
import p193e.p194a.p749f3.p750y.AbstractC13937a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.t */
/* loaded from: classes6-dex2jar.jar:e/a/f3/t.class */
public final class C13927t extends m implements l<CallBubblesContainerView, s> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC13937a f40333b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13927t(AbstractC13937a abstractC13937a) {
        super(1);
        this.f40333b = abstractC13937a;
    }

    /* renamed from: d */
    public Object m20954d(Object obj) {
        CallBubblesContainerView callBubblesContainerView = (CallBubblesContainerView) obj;
        s1.z.c.l.e(callBubblesContainerView, "bubbleView");
        callBubblesContainerView.setStateText(this.f40333b.f40346a);
        AbstractC13937a abstractC13937a = this.f40333b;
        callBubblesContainerView.m35786p(abstractC13937a.f40347b, abstractC13937a.f40348c);
        AbstractC13937a abstractC13937a2 = this.f40333b;
        if (abstractC13937a2 instanceof AbstractC13937a.C13940c) {
            callBubblesContainerView.m35783s(((AbstractC13937a.C13940c) abstractC13937a2).f40351d);
        }
        return s.a;
    }
}
