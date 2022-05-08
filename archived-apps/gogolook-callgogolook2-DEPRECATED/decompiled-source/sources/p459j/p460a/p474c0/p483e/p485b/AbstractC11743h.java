package p459j.p460a.p474c0.p483e.p485b;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import p459j.p460a.p474c0.p483e.p485b.AbstractC11735d;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\b&\u0018��*\u0006\b��\u0010\u0001 ��*\u0004\b\u0001\u0010\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00028\u00012\u0006\u0010\b\u001a\u00028��H¤@ø\u0001��¢\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000b2\u0006\u0010\b\u001a\u00028��H\u0086Bø\u0001��¢\u0006\u0002\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/domain/UseCase;", "P", "R", "", "coroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "execute", "parameters", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "Lgogolook/callgogolook2/messaging/scan/domain/Result;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.b.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/h.class */
public abstract class AbstractC11743h<P, R> {

    /* renamed from: a */
    public final CoroutineDispatcher f26347a;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/domain/UseCase", m472f = "UseCase.kt", m471l = {20, 30}, m470m = "invoke")
    /* renamed from: j.a.c0.e.b.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/h$a.class */
    public static final class C11744a extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f26348a;

        /* renamed from: b */
        public int f26349b;

        /* renamed from: d */
        public Object f26351d;

        /* renamed from: e */
        public Object f26352e;

        public C11744a(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f26348a = obj;
            this.f26349b |= Integer.MIN_VALUE;
            return AbstractC11743h.this.m8390b(null, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/domain/UseCase$invoke$2", m472f = "UseCase.kt", m471l = {25, 27}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.e.b.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/h$b.class */
    public static final class C11745b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super AbstractC11735d.C11738c<? extends R>>, Object> {

        /* renamed from: a */
        public CoroutineScope f26353a;

        /* renamed from: b */
        public int f26354b;

        /* renamed from: d */
        public final /* synthetic */ Object f26356d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11745b(Object obj, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26356d = obj;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11745b bVar = new C11745b(this.f26356d, dVar);
            bVar.f26353a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, Object obj) {
            return ((C11745b) create(coroutineScope, (AbstractC15044d) obj)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f26354b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                AbstractC11743h hVar = AbstractC11743h.this;
                Object obj2 = this.f26356d;
                this.f26354b = 1;
                Object a2 = hVar.mo8391a(obj2, this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return new AbstractC11735d.C11738c(obj);
        }
    }

    public AbstractC11743h(CoroutineDispatcher coroutineDispatcher) {
        C15149k.m377b(coroutineDispatcher, "coroutineDispatcher");
        this.f26347a = coroutineDispatcher;
    }

    /* renamed from: a */
    public abstract Object mo8391a(P p, AbstractC15044d<? super R> dVar) throws RuntimeException;

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|35|(2:10|(3:12|13|(2:15|16)(2:17|18))(2:20|21))(2:22|(3:24|25|(2:27|28))(2:33|34))|29|31|32))|7|8|35|(0)(0)|29|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00be, code lost:
        r6 = new p459j.p460a.p474c0.p483e.p485b.AbstractC11735d.C11736a(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m8390b(P r6, p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p483e.p485b.AbstractC11735d<? extends R>> r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p485b.AbstractC11743h.m8390b(java.lang.Object, l.w.d):java.lang.Object");
    }
}
