package p193e.p194a.p804h.p830o0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p703e3.AbstractC13350c;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.o0.f */
/* loaded from: classes2-dex2jar.jar:e/a/h/o0/f.class */
public final class C14713f implements AbstractC13350c {

    /* renamed from: a */
    public final g f42214a = C25225a.m3978P1(new C14714a());

    /* renamed from: b */
    public final Context f42215b;

    /* renamed from: e.a.h.o0.f$a */
    /* loaded from: classes2-dex2jar.jar:e/a/h/o0/f$a.class */
    public static final class C14714a extends m implements a<AbstractC15539j2> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14714a() {
            super(0);
            C14713f.this = r4;
        }

        public Object invoke() {
            Context context = C14713f.this.f42215b;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) context).mo10154s();
        }
    }

    @Inject
    public C14713f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f42215b = context;
    }

    /* renamed from: a */
    public final AbstractC15539j2 m19739a() {
        return (AbstractC15539j2) this.f42214a.getValue();
    }
}
