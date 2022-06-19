package p193e.p194a.p619d.p666y.p669c;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p637c0.C11433m0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.y.c.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/j.class */
public final class C12323j extends AbstractC20574a<AbstractC12321h> implements AbstractC12320g {

    /* renamed from: d */
    public final f f35988d;

    /* renamed from: e */
    public final AbstractC12319f f35989e;

    /* renamed from: f */
    public final C11433m0 f35990f;

    @e(c = "com.truecaller.voip.notification.missed.MissedVoipCallsPresenter", f = "MissedVoipCallsPresenter.kt", l = {43, 49}, m = "showMissedCallsNotification")
    /* renamed from: e.a.d.y.c.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/c/j$a.class */
    public static final class C12324a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35991d;

        /* renamed from: e */
        public int f35992e;

        /* renamed from: g */
        public Object f35994g;

        /* renamed from: h */
        public Object f35995h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12324a(d dVar) {
            super(dVar);
            C12323j.this = r4;
        }

        /* renamed from: s */
        public final Object m23266s(Object obj) {
            this.f35991d = obj;
            this.f35992e |= Integer.MIN_VALUE;
            return C12323j.this.m23267Ij(this);
        }
    }

    @e(c = "com.truecaller.voip.notification.missed.MissedVoipCallsPresenter$showMissedCallsNotification$missedCalls$1", f = "MissedVoipCallsPresenter.kt", l = {43}, m = "invokeSuspend")
    /* renamed from: e.a.d.y.c.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/c/j$b.class */
    public static final class C12325b extends i implements p<i0, d<? super List<? extends C12318e>>, Object> {

        /* renamed from: e */
        public int f35996e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12325b(d dVar) {
            super(2, dVar);
            C12323j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23265i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12325b(dVar);
        }

        /* renamed from: k */
        public final Object m23264k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12325b(dVar).m23263s(s.a);
        }

        /* renamed from: s */
        public final Object m23263s(Object obj) {
            a aVar = a.a;
            int i = this.f35996e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC12319f abstractC12319f = C12323j.this.f35989e;
                this.f35996e = 1;
                Object m23275a = ((C12316d) abstractC12319f).m23275a(this);
                obj = m23275a;
                if (m23275a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12323j(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC12319f abstractC12319f, C11433m0 c11433m0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC12319f, "missedVoipCallsModel");
        l.e(c11433m0, "voipBitmapUtil");
        this.f35988d = fVar2;
        this.f35989e = abstractC12319f;
        this.f35990f = c11433m0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0240  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23267Ij(s1.w.d<? super java.lang.Boolean> r21) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p666y.p669c.C12323j.m23267Ij(s1.w.d):java.lang.Object");
    }
}
