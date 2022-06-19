package p193e.p194a.p804h.p830o0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p703e3.p710k.AbstractC13428d;
import s1.g;
import s1.w.d;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.o0.d */
/* loaded from: classes2-dex2jar.jar:e/a/h/o0/d.class */
public final class C14710d implements AbstractC13428d {

    /* renamed from: a */
    public final g f42208a = C25225a.m3978P1(new C14711a());

    /* renamed from: b */
    public final Context f42209b;

    /* renamed from: e.a.h.o0.d$a */
    /* loaded from: classes2-dex2jar.jar:e/a/h/o0/d$a.class */
    public static final class C14711a extends m implements a<AbstractC7419a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14711a() {
            super(0);
            C14710d.this = r4;
        }

        public Object invoke() {
            Context context = C14710d.this.f42209b;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) context).mo10154s().mo12186u2();
        }
    }

    public C14710d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f42209b = context;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13428d
    /* renamed from: a */
    public Object mo19742a(String str, String str2, boolean z, d<? super FilterMatch> dVar) {
        return ((AbstractC7419a) this.f42208a.getValue()).mo29665a(str, str2, z, dVar);
    }
}
