package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p631e0.C14957p;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15123q;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J'\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00028��H\u0002¢\u0006\u0002\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0017J%\u0010\u0016\u001a\u0004\u0018\u00010\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u0014\u001a\u00028��H\u0002¢\u0006\u0002\u0010\u001aJ\u001a\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0018H\u0002J\"\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180 H\u0016ø\u0001��¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\fH\u0016R\u0010\u0010\u0005\u001a\u00020\u00068��X\u0081\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\t8��X\u0081\u0004¢\u0006\u0002\n��R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00028��X\u0081\u0004¢\u0006\u0002\n��R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "collector", "collectContext", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V", "collectContextSize", "", "completion", "Lkotlin/coroutines/Continuation;", "", "context", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "lastEmissionContext", "checkContext", "currentContext", "previousContext", C13032a.f29462d, "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "uCont", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;", "exceptionTransparencyViolated", "exception", "Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;", "invokeSuspend", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector.class */
public final class SafeCollector<T> extends AbstractC15068d implements FlowCollector<T> {
    public final AbstractC15049g collectContext;
    public final int collectContextSize;
    public final FlowCollector<T> collector;
    public AbstractC15044d<? super C14989s> completion;
    public AbstractC15049g lastEmissionContext;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(FlowCollector<? super T> flowCollector, AbstractC15049g gVar) {
        super(NoOpContinuation.INSTANCE, C15055h.f33080a);
        this.collector = flowCollector;
        this.collectContext = gVar;
        this.collectContextSize = ((Number) this.collectContext.fold(0, SafeCollector$collectContextSize$1.INSTANCE)).intValue();
    }

    private final void checkContext(AbstractC15049g gVar, AbstractC15049g gVar2, T t) {
        if (gVar2 instanceof DownstreamExceptionElement) {
            exceptionTransparencyViolated((DownstreamExceptionElement) gVar2, t);
        }
        SafeCollector_commonKt.checkContext(this, gVar);
        this.lastEmissionContext = gVar;
    }

    private final Object emit(AbstractC15044d<? super C14989s> dVar, T t) {
        AbstractC15049g context = dVar.getContext();
        AbstractC15049g gVar = this.lastEmissionContext;
        if (gVar != context) {
            checkContext(context, gVar, t);
        }
        this.completion = dVar;
        AbstractC15123q access$getEmitFun$p = SafeCollectorKt.access$getEmitFun$p();
        FlowCollector<T> flowCollector = this.collector;
        if (flowCollector != null) {
            return access$getEmitFun$p.invoke(flowCollector, t, this);
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
    }

    private final void exceptionTransparencyViolated(DownstreamExceptionElement downstreamExceptionElement, Object obj) {
        throw new IllegalStateException(C14957p.m732c("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + downstreamExceptionElement.f32924e + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, AbstractC15044d<? super C14989s> dVar) {
        try {
            Object emit = emit(dVar, (AbstractC15044d<? super C14989s>) t);
            if (emit == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return emit == C15064c.m478a() ? emit : C14989s.f33022a;
        } catch (Throwable th) {
            this.lastEmissionContext = new DownstreamExceptionElement(th);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L_0x001b;
     */
    @Override // p626l.p634w.p636k.p637a.AbstractC15068d, p626l.p634w.AbstractC15044d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p626l.p634w.AbstractC15049g getContext() {
        /*
            r2 = this;
            r0 = r2
            l.w.d<? super l.s> r0 = r0.completion
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0017
            r0 = r3
            l.w.g r0 = r0.getContext()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0017
            goto L_0x001b
        L_0x0017:
            l.w.h r0 = p626l.p634w.C15055h.f33080a
            r3 = r0
        L_0x001b:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.SafeCollector.getContext():l.w.g");
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public Object invokeSuspend(Object obj) {
        Throwable b = C14979k.m656b(obj);
        if (b != null) {
            this.lastEmissionContext = new DownstreamExceptionElement(b);
        }
        AbstractC15044d<? super C14989s> dVar = this.completion;
        if (dVar != null) {
            dVar.resumeWith(obj);
        }
        return C15064c.m478a();
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15068d, p626l.p634w.p636k.p637a.AbstractC15065a
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
