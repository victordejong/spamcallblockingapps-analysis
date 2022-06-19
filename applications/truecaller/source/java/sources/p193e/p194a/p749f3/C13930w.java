package p193e.p194a.p749f3;

import com.truecaller.callbubbles.CallBubblesContainerView;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.w */
/* loaded from: classes6-dex2jar.jar:e/a/f3/w.class */
public final class C13930w extends m implements l<CallBubblesContainerView, s> {

    /* renamed from: b */
    public final /* synthetic */ C13919o f40336b;

    /* renamed from: c */
    public final /* synthetic */ a f40337c;

    /* renamed from: d */
    public final /* synthetic */ a f40338d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13930w(C13919o c13919o, a aVar, a aVar2) {
        super(1);
        this.f40336b = c13919o;
        this.f40337c = aVar;
        this.f40338d = aVar2;
    }

    /* renamed from: d */
    public Object m20952d(Object obj) {
        CallBubblesContainerView callBubblesContainerView = (CallBubblesContainerView) obj;
        s1.z.c.l.e(callBubblesContainerView, "bubbleView");
        callBubblesContainerView.setIconClickListener(new C13929v(this));
        return s.a;
    }
}
