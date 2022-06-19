package p193e.p194a.p749f3;

import com.truecaller.callbubbles.CallBubblesContainerView;
import p193e.p194a.p749f3.AbstractC13931x;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.k */
/* loaded from: classes6-dex2jar.jar:e/a/f3/k.class */
public final class C13915k extends m implements l<AbstractC13931x, s> {

    /* renamed from: b */
    public final /* synthetic */ CallBubblesContainerView f40308b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13915k(CallBubblesContainerView callBubblesContainerView) {
        super(1);
        this.f40308b = callBubblesContainerView;
    }

    /* renamed from: d */
    public Object m20965d(Object obj) {
        a<s> aVar;
        AbstractC13931x abstractC13931x = (AbstractC13931x) obj;
        s1.z.c.l.e(abstractC13931x, "event");
        String str = "New bubble touch event: " + abstractC13931x;
        if (abstractC13931x instanceof AbstractC13931x.C13933b) {
            AbstractC13931x.C13933b c13933b = (AbstractC13931x.C13933b) abstractC13931x;
            CallBubblesContainerView.m35800b(this.f40308b, c13933b.f40340a, c13933b.f40341b);
        } else if (abstractC13931x instanceof AbstractC13931x.C13934c) {
            CallBubblesContainerView callBubblesContainerView = this.f40308b;
            AbstractC13931x.C13934c c13934c = (AbstractC13931x.C13934c) abstractC13931x;
            float f = c13934c.f40342a;
            float f2 = c13934c.f40343b;
            int i = CallBubblesContainerView.f10548m;
            callBubblesContainerView.m35789m(f, f2);
        } else if (abstractC13931x instanceof AbstractC13931x.C13936e) {
            CallBubblesContainerView callBubblesContainerView2 = this.f40308b;
            int i2 = CallBubblesContainerView.f10548m;
            callBubblesContainerView2.m35789m(0.0f, 0.0f);
        } else if ((abstractC13931x instanceof AbstractC13931x.C13935d) && (aVar = this.f40308b.f10556h) != null) {
            s sVar = (s) aVar.invoke();
        }
        return s.a;
    }
}
