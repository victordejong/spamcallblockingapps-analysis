package p193e.p194a.p437c.p609x;

import com.truecaller.insights.models.pdo.SmsBackupMessage;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p530f.C10004j;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.c.x.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/x/b.class */
public final class C10861b implements AbstractC10860a {

    /* renamed from: a */
    public final y f32252a;

    /* renamed from: b */
    public final i0 f32253b;

    /* renamed from: c */
    public final f f32254c;

    /* renamed from: d */
    public final f f32255d;

    /* renamed from: e */
    public final C10004j f32256e;

    @e(c = "com.truecaller.insights.search.MessageInfoLoaderImpl$loadMessageInfoIntoUiContext$1", f = "MessageInfoLoader.kt", l = {32, 33}, m = "invokeSuspend")
    /* renamed from: e.a.c.x.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/x/b$a.class */
    public static final class C10862a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f32257e;

        /* renamed from: g */
        public final /* synthetic */ long f32259g;

        /* renamed from: h */
        public final /* synthetic */ l f32260h;

        @e(c = "com.truecaller.insights.search.MessageInfoLoaderImpl$loadMessageInfoIntoUiContext$1$1$1", f = "MessageInfoLoader.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.x.b$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/x/b$a$a.class */
        public static final class C10863a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ SmsBackupMessage f32261e;

            /* renamed from: f */
            public final /* synthetic */ C10862a f32262f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10863a(SmsBackupMessage smsBackupMessage, d dVar, C10862a c10862a) {
                super(2, dVar);
                this.f32261e = smsBackupMessage;
                this.f32262f = c10862a;
            }

            /* renamed from: i */
            public final d<s> m25544i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C10863a(this.f32261e, dVar, this.f32262f);
            }

            /* renamed from: k */
            public final Object m25543k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                SmsBackupMessage smsBackupMessage = this.f32261e;
                C10862a c10862a = this.f32262f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                c10862a.f32260h.d(smsBackupMessage);
                return sVar;
            }

            /* renamed from: s */
            public final Object m25542s(Object obj) {
                C25225a.m3932a3(obj);
                this.f32262f.f32260h.d(this.f32261e);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10862a(long j, l lVar, d dVar) {
            super(2, dVar);
            C10861b.this = r5;
            this.f32259g = j;
            this.f32260h = lVar;
        }

        /* renamed from: i */
        public final d<s> m25547i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10862a(this.f32259g, this.f32260h, dVar);
        }

        /* renamed from: k */
        public final Object m25546k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10862a(this.f32259g, this.f32260h, dVar).m25545s(s.a);
        }

        /* renamed from: s */
        public final Object m25545s(Object obj) {
            a aVar = a.a;
            int i = this.f32257e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10004j c10004j = C10861b.this.f32256e;
                long j = this.f32259g;
                this.f32257e = 1;
                Object mo27134O = c10004j.f29835a.mo27134O(j, this);
                obj = mo27134O;
                if (mo27134O == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            SmsBackupMessage smsBackupMessage = (SmsBackupMessage) obj;
            if (smsBackupMessage != null) {
                f fVar = C10861b.this.f32255d;
                C10863a c10863a = new C10863a(smsBackupMessage, null, this);
                this.f32257e = 2;
                if (s1.a.a.a.v0.f.d.a4(fVar, c10863a, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @Inject
    public C10861b(@Named("IO") f fVar, @Named("UI") f fVar2, C10004j c10004j) {
        s1.z.c.l.e(fVar, "ioCoroutineContext");
        s1.z.c.l.e(fVar2, "uiCoroutineContext");
        s1.z.c.l.e(c10004j, "loadInfoUsecase");
        this.f32254c = fVar;
        this.f32255d = fVar2;
        this.f32256e = c10004j;
        y n = s1.a.a.a.v0.f.d.n((p1) null, 1);
        this.f32252a = n;
        this.f32253b = s1.a.a.a.v0.f.d.h(fVar.plus(n));
    }

    @Override // p193e.p194a.p437c.p609x.AbstractC10860a
    /* renamed from: a */
    public void mo25548a(long j, l<? super SmsBackupMessage, s> lVar) {
        s1.z.c.l.e(lVar, "callback");
        s1.a.a.a.v0.f.d.w2(this.f32253b, (f) null, (j0) null, new C10862a(j, lVar, null), 3, (Object) null);
    }
}
