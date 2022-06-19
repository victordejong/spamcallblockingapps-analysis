package p193e.p194a.p437c.p438a.p498n.p500b;

import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$getPastRemindersWithRetry$$inlined$retryWhenThrowAndMap$1", f = "RemindersPageFlowUseCase.kt", l = {25}, m = "invokeSuspend")
/* renamed from: e.a.c.a.n.b.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/i.class */
public final class C9406i extends i implements p<g<? super List<? extends AdapterItem>>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28569e;

    /* renamed from: f */
    public int f28570f;

    /* renamed from: g */
    public final /* synthetic */ f f28571g;

    /* renamed from: h */
    public final /* synthetic */ Throwable f28572h;

    /* renamed from: i */
    public final /* synthetic */ C9390e f28573i;

    /* renamed from: e.a.c.a.n.b.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/i$a.class */
    public static final class C9407a implements g<List<? extends AbstractC10513j>> {

        /* renamed from: b */
        public final /* synthetic */ g f28575b;

        @e(c = "com.truecaller.insights.ui.reminders.domain.RemindersPageFlowUseCase$getPastRemindersWithRetry$$inlined$retryWhenThrowAndMap$1$1", f = "RemindersPageFlowUseCase.kt", l = {145}, m = "emit")
        /* renamed from: e.a.c.a.n.b.i$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/i$a$a.class */
        public static final class C9408a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f28576d;

            /* renamed from: e */
            public int f28577e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9408a(d dVar) {
                super(dVar);
                C9407a.this = r4;
            }

            /* renamed from: s */
            public final Object m27582s(Object obj) {
                this.f28576d = obj;
                this.f28577e |= Integer.MIN_VALUE;
                return C9407a.this.m27583a(null, this);
            }
        }

        /* renamed from: e.a.c.a.n.b.i$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/b/i$a$b.class */
        public static final class C9409b implements g<List<? extends AdapterItem>> {
            public C9409b() {
                C9407a.this = r4;
            }

            /* renamed from: a */
            public Object m27581a(Object obj, d dVar) {
                Object a = C9407a.this.f28575b.a(obj, dVar);
                return a == a.a ? a : s.a;
            }
        }

        public C9407a(g gVar) {
            C9406i.this = r4;
            this.f28575b = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m27583a(java.lang.Object r7, s1.w.d r8) {
            /*
                Method dump skipped, instructions count: 212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p498n.p500b.C9406i.C9407a.m27583a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9406i(f fVar, Throwable th, d dVar, C9390e c9390e) {
        super(2, dVar);
        this.f28571g = fVar;
        this.f28572h = th;
        this.f28573i = c9390e;
    }

    /* renamed from: i */
    public final d<s> m27586i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C9406i c9406i = new C9406i(this.f28571g, this.f28572h, dVar, this.f28573i);
        c9406i.f28569e = obj;
        return c9406i;
    }

    /* renamed from: k */
    public final Object m27585k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C9406i c9406i = new C9406i(this.f28571g, this.f28572h, dVar, this.f28573i);
        c9406i.f28569e = obj;
        return c9406i.m27584s(s.a);
    }

    /* renamed from: s */
    public final Object m27584s(Object obj) {
        a aVar = a.a;
        int i = this.f28570f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f28569e;
            f fVar = this.f28571g;
            C9407a c9407a = new C9407a(gVar);
            this.f28570f = 1;
            if (fVar.c(c9407a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
