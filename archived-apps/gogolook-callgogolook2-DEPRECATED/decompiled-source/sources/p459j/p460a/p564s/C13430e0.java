package p459j.p460a.p564s;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u0006H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/developmode/TestDeferredSmsJob;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob;", "callback", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;", "(Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;)V", "startWork", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.e0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/e0.class */
public final class C13430e0 extends AbstractC11893j {

    @AbstractC15070f(m473c = "gogolook/callgogolook2/developmode/TestDeferredSmsJob", m472f = "TestRealTimeSmsJob.kt", m471l = {27, 37}, m470m = "startWork")
    /* renamed from: j.a.s.e0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/e0$a.class */
    public static final class C13431a extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f30182a;

        /* renamed from: b */
        public int f30183b;

        /* renamed from: d */
        public Object f30185d;

        public C13431a(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f30182a = obj;
            this.f30183b |= Integer.MIN_VALUE;
            return C13430e0.this.mo4042a(this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/developmode/TestDeferredSmsJob$startWork$2", m472f = "TestRealTimeSmsJob.kt", m471l = {30, 33}, m470m = "invokeSuspend")
    /* renamed from: j.a.s.e0$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/e0$b.class */
    public static final class C13432b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30186a;

        /* renamed from: b */
        public int f30187b;

        public C13432b(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13432b bVar = new C13432b(dVar);
            bVar.f30186a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13432b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30187b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                this.f30187b = 1;
                if (DelayKt.delay(30000L, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13430e0(AbstractC11893j.AbstractC11897b bVar) {
        super(bVar);
        C15149k.m377b(bVar, "callback");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo4042a(p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11894a> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p459j.p460a.p564s.C13430e0.C13431a
            if (r0 == 0) goto L_0x0025
            r0 = r6
            j.a.s.e0$a r0 = (p459j.p460a.p564s.C13430e0.C13431a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f30183b
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30183b = r1
            r0 = r7
            r6 = r0
            goto L_0x002f
        L_0x0025:
            j.a.s.e0$a r0 = new j.a.s.e0$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L_0x002f:
            r0 = r6
            java.lang.Object r0 = r0.f30182a
            r9 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r7 = r0
            r0 = r6
            int r0 = r0.f30183b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r6
            java.lang.Object r0 = r0.f30185d
            j.a.s.e0 r0 = (p459j.p460a.p564s.C13430e0) r0
            r6 = r0
            r0 = r9
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x005a
            goto L_0x009c
        L_0x005a:
            r0 = r9
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r9
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x00a4
            kotlinx.coroutines.CoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getIO()
            r10 = r0
            j.a.s.e0$b r0 = new j.a.s.e0$b
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r9 = r0
            r0 = r6
            r1 = r5
            r0.f30185d = r1
            r0 = r6
            r1 = 1
            r0.f30183b = r1
            r0 = r10
            r1 = r9
            r2 = r6
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r0, r1, r2)
            r1 = r7
            if (r0 != r1) goto L_0x009c
            r0 = r7
            return r0
        L_0x009c:
            j.a.c0.f.q.j$a$b r0 = new j.a.c0.f.q.j$a$b
            r1 = r0
            r1.<init>()
            return r0
        L_0x00a4:
            r0 = r9
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p564s.C13430e0.mo4042a(l.w.d):java.lang.Object");
    }
}
