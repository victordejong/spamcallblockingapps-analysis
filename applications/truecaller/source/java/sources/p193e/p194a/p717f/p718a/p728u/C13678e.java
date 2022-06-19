package p193e.p194a.p717f.p718a.p728u;

import com.truecaller.incallui.callui.enablePromo.Action;
import java.util.Objects;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f.a.u.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/e.class */
public final class C13678e extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC13676d f39653b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13678e(AbstractC13676d abstractC13676d) {
        super(1);
        this.f39653b = abstractC13676d;
    }

    /* renamed from: d */
    public Object m21317d(Object obj) {
        if (!((Boolean) obj).booleanValue()) {
            AbstractC13676d abstractC13676d = this.f39653b;
            int i = AbstractC13676d.f39645p;
            Objects.requireNonNull(abstractC13676d);
            abstractC13676d.m21318eB(Action.DefaultDialerRejected);
            abstractC13676d.dismissAllowingStateLoss();
        } else {
            AbstractC13676d abstractC13676d2 = this.f39653b;
            int i2 = AbstractC13676d.f39645p;
            abstractC13676d2.m21320cB();
        }
        return s.a;
    }
}
