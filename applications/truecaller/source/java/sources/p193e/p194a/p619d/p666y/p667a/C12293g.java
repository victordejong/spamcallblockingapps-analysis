package p193e.p194a.p619d.p666y.p667a;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
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
/* renamed from: e.a.d.y.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/a/g.class */
public final class C12293g extends AbstractC20574a<AbstractC12291e> implements AbstractC12289c {

    /* renamed from: d */
    public final AbstractC12290d f35921d;

    /* renamed from: e */
    public final f f35922e;

    /* renamed from: f */
    public final f f35923f;

    @e(c = "com.truecaller.voip.notification.blocked.VoipBlockedCallsPresenter", f = "VoipBlockedCallsPresenter.kt", l = {36}, m = "showCallBlockedNotification")
    /* renamed from: e.a.d.y.a.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/a/g$a.class */
    public static final class C12294a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35924d;

        /* renamed from: e */
        public int f35925e;

        /* renamed from: g */
        public Object f35927g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12294a(d dVar) {
            super(dVar);
            C12293g.this = r4;
        }

        /* renamed from: s */
        public final Object m23306s(Object obj) {
            this.f35924d = obj;
            this.f35925e |= Integer.MIN_VALUE;
            return C12293g.this.m23307Ij(this);
        }
    }

    @e(c = "com.truecaller.voip.notification.blocked.VoipBlockedCallsPresenter$showCallBlockedNotification$blockedCalls$1", f = "VoipBlockedCallsPresenter.kt", l = {36}, m = "invokeSuspend")
    /* renamed from: e.a.d.y.a.g$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/a/g$b.class */
    public static final class C12295b extends i implements p<i0, d<? super List<? extends C12288b>>, Object> {

        /* renamed from: e */
        public int f35928e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12295b(d dVar) {
            super(2, dVar);
            C12293g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23305i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12295b(dVar);
        }

        /* renamed from: k */
        public final Object m23304k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12295b(dVar).m23303s(s.a);
        }

        /* renamed from: s */
        public final Object m23303s(Object obj) {
            a aVar = a.a;
            int i = this.f35928e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC12290d abstractC12290d = C12293g.this.f35921d;
                this.f35928e = 1;
                Object m23302a = ((C12296h) abstractC12290d).m23302a(this);
                obj = m23302a;
                if (m23302a == aVar) {
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
    public C12293g(AbstractC12290d abstractC12290d, @Named("UI") f fVar, @Named("IO") f fVar2) {
        super(fVar);
        l.e(abstractC12290d, "repository");
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        this.f35921d = abstractC12290d;
        this.f35922e = fVar;
        this.f35923f = fVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c9  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23307Ij(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p666y.p667a.C12293g.m23307Ij(s1.w.d):java.lang.Object");
    }
}
