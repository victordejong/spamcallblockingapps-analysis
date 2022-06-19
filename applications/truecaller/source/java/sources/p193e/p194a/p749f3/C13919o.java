package p193e.p194a.p749f3;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callbubbles.CallBubblesContainerView;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import q3.a.i0;
import q3.a.p1;
import q3.a.w2.i;
import q3.a.w2.j;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.o */
/* loaded from: classes6-dex2jar.jar:e/a/f3/o.class */
public final class C13919o implements AbstractC13907c, i0 {

    /* renamed from: b */
    public boolean f40314b;

    /* renamed from: d */
    public final f f40316d;

    /* renamed from: e */
    public final f f40317e;

    /* renamed from: f */
    public final a<C20592g> f40318f;

    /* renamed from: g */
    public final Context f40319g;

    /* renamed from: h */
    public final a<AbstractC19230g> f40320h;

    /* renamed from: i */
    public final AbstractC19219a0 f40321i;

    /* renamed from: a */
    public final g f40313a = C25225a.m3978P1(new C13920a());

    /* renamed from: c */
    public final g f40315c = C25225a.m3978P1(C13921b.f40323b);

    /* renamed from: e.a.f3.o$a */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/o$a.class */
    public static final class C13920a extends m implements s1.z.b.a<f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13920a() {
            super(0);
            C13919o.this = r4;
        }

        public Object invoke() {
            return C13919o.this.f40316d.plus(d.j((p1) null, 1, (Object) null));
        }
    }

    /* renamed from: e.a.f3.o$b */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/o$b.class */
    public static final class C13921b extends m implements s1.z.b.a<j<l<? super CallBubblesContainerView, ? extends s>>> {

        /* renamed from: b */
        public static final C13921b f40323b = new C13921b();

        public C13921b() {
            super(0);
        }

        public Object invoke() {
            return d.f(Integer.MAX_VALUE, (i) null, (l) null, 6);
        }
    }

    @Inject
    public C13919o(@Named("UI") f fVar, @Named("IO") f fVar2, a<C20592g> aVar, Context context, a<AbstractC19230g> aVar2, AbstractC19219a0 abstractC19219a0) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(fVar2, "ioContext");
        s1.z.c.l.e(aVar, "featuresRegistry");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(aVar2, "deviceInfoUtil");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        this.f40316d = fVar;
        this.f40317e = fVar2;
        this.f40318f = aVar;
        this.f40319g = context;
        this.f40320h = aVar2;
        this.f40321i = abstractC19219a0;
    }

    /* renamed from: a */
    public final j<l<CallBubblesContainerView, s>> m20964a() {
        return (j) this.f40315c.getValue();
    }

    public f getCoroutineContext() {
        return (f) this.f40313a.getValue();
    }
}
