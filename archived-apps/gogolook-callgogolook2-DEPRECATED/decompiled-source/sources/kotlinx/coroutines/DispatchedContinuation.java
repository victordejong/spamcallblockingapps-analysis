package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import p459j.p460a.p541n0.C13032a;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u00028��0C2\u000601j\u0002`22\b\u0012\u0004\u0012\u00028��0\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028��H��¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\t¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010 \u001a\u00020\u00122\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001eH\u0086\bø\u0001��¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u001bH\u0086\b¢\u0006\u0004\b\"\u0010#J!\u0010$\u001a\u00020\u00122\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001eH\u0086\bø\u0001��¢\u0006\u0004\b$\u0010!J \u0010%\u001a\u00020\u00122\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001eH\u0016ø\u0001��¢\u0006\u0004\b%\u0010!J\u0011\u0010)\u001a\u0004\u0018\u00010&H\u0010¢\u0006\u0004\b'\u0010(J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,R\u001e\u0010-\u001a\u0004\u0018\u00010&8��@��X\u0081\u000e¢\u0006\f\n\u0004\b-\u0010.\u0012\u0004\b/\u00100R$\u00103\u001a\n\u0018\u000101j\u0004\u0018\u0001`28\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0016\u0010\u0010\u001a\u00020\u000f8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b7\u00108R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u00109R\u0016\u0010:\u001a\u00020&8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b:\u0010.R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00028��0\u00048P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010>R\u0013\u0010?\u001a\u00020\u001b8F@\u0006¢\u0006\u0006\u001a\u0004\b?\u0010#R\u0019\u0010A\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8F@\u0006¢\u0006\u0006\u001a\u0004\b@\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006B"}, m815d2 = {"Lkotlinx/coroutines/DispatchedContinuation;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V", "Lkotlinx/coroutines/CancellableContinuation;", "", "checkPostponedCancellation", "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "claimReusableCancellableContinuation", "()Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "context", C13032a.f29462d, "", "dispatchYield$kotlinx_coroutines_core", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "dispatchYield", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "cause", "", "postponeCancellation", "(Ljava/lang/Throwable;)Z", "Lkotlin/Result;", "result", "resumeCancellableWith", "(Ljava/lang/Object;)V", "resumeCancelled", "()Z", "resumeUndispatchedWith", "resumeWith", "", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "", "toString", "()Ljava/lang/String;", "_state", "Ljava/lang/Object;", "_state$annotations", "()V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/Continuation;", "countOrElement", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CoroutineDispatcher;", "isReusable", "getReusableCancellableContinuation", "reusableCancellableContinuation", "kotlinx-coroutines-core", "Lkotlinx/coroutines/DispatchedTask;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DispatchedContinuation.class */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements AbstractC15069e, AbstractC15044d<T> {
    public static final AtomicReferenceFieldUpdater _reusableCancellableContinuation$FU = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation");
    public volatile Object _reusableCancellableContinuation;
    public Object _state = DispatchedContinuationKt.access$getUNDEFINED$p();
    public final AbstractC15069e callerFrame;
    public final AbstractC15044d<T> continuation;
    public final Object countOrElement;
    public final CoroutineDispatcher dispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, AbstractC15044d<? super T> dVar) {
        super(0);
        this.dispatcher = coroutineDispatcher;
        this.continuation = dVar;
        AbstractC15044d<T> dVar2 = this.continuation;
        this.callerFrame = (AbstractC15069e) (!(dVar2 instanceof AbstractC15069e) ? null : dVar2);
        this.countOrElement = ThreadContextKt.threadContextElements(getContext());
        this._reusableCancellableContinuation = null;
    }

    public static /* synthetic */ void _state$annotations() {
    }

    public final Throwable checkPostponedCancellation(CancellableContinuation<?> cancellableContinuation) {
        Symbol symbol;
        do {
            Object obj = this._reusableCancellableContinuation;
            symbol = DispatchedContinuationKt.REUSABLE_CLAIMED;
            if (obj != symbol) {
                if (obj == null) {
                    return null;
                }
                if (!(obj instanceof Throwable)) {
                    throw new IllegalStateException(("Inconsistent state " + obj).toString());
                } else if (_reusableCancellableContinuation$FU.compareAndSet(this, obj, null)) {
                    return (Throwable) obj;
                } else {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
        } while (!_reusableCancellableContinuation$FU.compareAndSet(this, symbol, cancellableContinuation));
        return null;
    }

    public final CancellableContinuationImpl<T> claimReusableCancellableContinuation() {
        Object obj;
        do {
            obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = DispatchedContinuationKt.REUSABLE_CLAIMED;
                return null;
            } else if (!(obj instanceof CancellableContinuationImpl)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!_reusableCancellableContinuation$FU.compareAndSet(this, obj, DispatchedContinuationKt.REUSABLE_CLAIMED));
        return (CancellableContinuationImpl) obj;
    }

    public final void dispatchYield$kotlinx_coroutines_core(AbstractC15049g gVar, T t) {
        this._state = t;
        this.resumeMode = 1;
        this.dispatcher.dispatchYield(gVar, this);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public AbstractC15069e getCallerFrame() {
        return this.callerFrame;
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return this.continuation.getContext();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public AbstractC15044d<T> getDelegate$kotlinx_coroutines_core() {
        return this;
    }

    public final CancellableContinuationImpl<?> getReusableCancellableContinuation() {
        Object obj = this._reusableCancellableContinuation;
        Object obj2 = obj;
        if (!(obj instanceof CancellableContinuationImpl)) {
            obj2 = null;
        }
        return (CancellableContinuationImpl) obj2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final boolean isReusable() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean postponeCancellation(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (C15149k.m384a(obj, DispatchedContinuationKt.REUSABLE_CLAIMED)) {
                if (_reusableCancellableContinuation$FU.compareAndSet(this, DispatchedContinuationKt.REUSABLE_CLAIMED, th)) {
                    return true;
                }
            } else if (obj instanceof Throwable) {
                return true;
            } else {
                if (_reusableCancellableContinuation$FU.compareAndSet(this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void resumeCancellableWith(Object obj) {
        boolean z;
        Object state = CompletedExceptionallyKt.toState(obj);
        if (this.dispatcher.isDispatchNeeded(getContext())) {
            this._state = state;
            this.resumeMode = 1;
            this.dispatcher.dispatch(getContext(), this);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 1;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            Job job = (Job) getContext().get(Job.Key);
            if (job == null || job.isActive()) {
                z = false;
            } else {
                CancellationException cancellationException = job.getCancellationException();
                C14979k.C14980a aVar = C14979k.f33013a;
                Object a = C14982l.m652a((Throwable) cancellationException);
                C14979k.m657a(a);
                resumeWith(a);
                z = true;
            }
            if (!z) {
                AbstractC15049g context = getContext();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
                this.continuation.resumeWith(obj);
                C14989s sVar = C14989s.f33022a;
                C15148j.m389b(1);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                C15148j.m390a(1);
            }
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
            C15148j.m389b(1);
        } catch (Throwable th) {
            try {
                handleFatalException$kotlinx_coroutines_core(th, null);
                C15148j.m389b(1);
            } catch (Throwable th2) {
                C15148j.m389b(1);
                eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
                C15148j.m390a(1);
                throw th2;
            }
        }
        eventLoop$kotlinx_coroutines_core.decrementUseCount(true);
        C15148j.m390a(1);
    }

    public final boolean resumeCancelled() {
        Job job = (Job) getContext().get(Job.Key);
        if (job == null || job.isActive()) {
            return false;
        }
        CancellationException cancellationException = job.getCancellationException();
        C14979k.C14980a aVar = C14979k.f33013a;
        Object a = C14982l.m652a((Throwable) cancellationException);
        C14979k.m657a(a);
        resumeWith(a);
        return true;
    }

    public final void resumeUndispatchedWith(Object obj) {
        AbstractC15049g context = getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, this.countOrElement);
        try {
            this.continuation.resumeWith(obj);
            C14989s sVar = C14989s.f33022a;
            C15148j.m389b(1);
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
            C15148j.m390a(1);
            throw th;
        }
    }

    @Override // p626l.p634w.AbstractC15044d
    public void resumeWith(Object obj) {
        AbstractC15049g context = this.continuation.getContext();
        Object state = CompletedExceptionallyKt.toState(obj);
        if (this.dispatcher.isDispatchNeeded(context)) {
            this._state = state;
            this.resumeMode = 0;
            this.dispatcher.dispatch(context, this);
            return;
        }
        EventLoop eventLoop$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$kotlinx_coroutines_core.isUnconfinedLoopActive()) {
            this._state = state;
            this.resumeMode = 0;
            eventLoop$kotlinx_coroutines_core.dispatchUnconfined(this);
            return;
        }
        eventLoop$kotlinx_coroutines_core.incrementUseCount(true);
        try {
            AbstractC15049g context2 = getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context2, this.countOrElement);
            this.continuation.resumeWith(obj);
            C14989s sVar = C14989s.f33022a;
            ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
            do {
            } while (eventLoop$kotlinx_coroutines_core.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        Object obj = this._state;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(obj != DispatchedContinuationKt.access$getUNDEFINED$p())) {
                throw new AssertionError();
            }
        }
        this._state = DispatchedContinuationKt.access$getUNDEFINED$p();
        return obj;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.dispatcher + UserProfile.CARD_CATE_SEPARATOR + DebugStringsKt.toDebugString(this.continuation) + ']';
    }
}
