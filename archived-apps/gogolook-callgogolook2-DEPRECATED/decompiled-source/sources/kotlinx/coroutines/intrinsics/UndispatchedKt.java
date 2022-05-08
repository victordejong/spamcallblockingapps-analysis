package kotlinx.coroutines.intrinsics;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15138d0;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u001a9\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u001a\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0082\b\u001a>\u0010\b\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\t\u001aR\u0010\b\u001a\u00020\u0001\"\u0004\b��\u0010\n\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\f\u001a\u0002H\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\r\u001a>\u0010\u000e\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\t\u001aR\u0010\u000e\u001a\u00020\u0001\"\u0004\b��\u0010\n\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\f\u001a\u0002H\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\r\u001aY\u0010\u000f\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\f\u001a\u0002H\n2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0002\u0010\u0012\u001aY\u0010\u0013\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\f\u001a\u0002H\n2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0002\u0010\u0012\u001a?\u0010\u0014\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019H\u0082\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"startDirect", "", ExifInterface.GPS_DIRECTION_TRUE, "completion", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/Function1;", "", "startCoroutineUndispatched", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "startCoroutineUnintercepted", "startUndispatchedOrReturn", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "startUndispatchedOrReturnIgnoreTimeout", "undispatchedResult", "shouldThrow", "", "", "startBlock", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/intrinsics/UndispatchedKt.class */
public final class UndispatchedKt {
    public static final <T> void startCoroutineUndispatched(AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar, AbstractC15044d<? super T> dVar) {
        C15072h.m464a(dVar);
        try {
            AbstractC15049g context = dVar.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            if (lVar != null) {
                C15138d0.m399a(lVar, 1);
                Object invoke = lVar.invoke(dVar);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                if (invoke != C15064c.m478a()) {
                    C14979k.C14980a aVar = C14979k.f33013a;
                    C14979k.m657a(invoke);
                    dVar.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void startCoroutineUndispatched(AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar, R r, AbstractC15044d<? super T> dVar) {
        C15072h.m464a(dVar);
        try {
            AbstractC15049g context = dVar.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
            if (pVar != null) {
                C15138d0.m399a(pVar, 2);
                Object invoke = pVar.invoke(r, dVar);
                ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                if (invoke != C15064c.m478a()) {
                    C14979k.C14980a aVar = C14979k.f33013a;
                    C14979k.m657a(invoke);
                    dVar.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    public static final <T> void startCoroutineUnintercepted(AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar, AbstractC15044d<? super T> dVar) {
        C15072h.m464a(dVar);
        try {
            if (lVar != null) {
                C15138d0.m399a(lVar, 1);
                Object invoke = lVar.invoke(dVar);
                if (invoke != C15064c.m478a()) {
                    C14979k.C14980a aVar = C14979k.f33013a;
                    C14979k.m657a(invoke);
                    dVar.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void startCoroutineUnintercepted(AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar, R r, AbstractC15044d<? super T> dVar) {
        C15072h.m464a(dVar);
        try {
            if (pVar != null) {
                C15138d0.m399a(pVar, 2);
                Object invoke = pVar.invoke(r, dVar);
                if (invoke != C15064c.m478a()) {
                    C14979k.C14980a aVar = C14979k.f33013a;
                    C14979k.m657a(invoke);
                    dVar.resumeWith(invoke);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    public static final <T> void startDirect(AbstractC15044d<? super T> dVar, AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar) {
        C15072h.m464a(dVar);
        try {
            Object invoke = lVar.invoke(dVar);
            if (invoke != C15064c.m478a()) {
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(invoke);
                dVar.resumeWith(invoke);
            }
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    public static final <T, R> Object startUndispatchedOrReturn(ScopeCoroutine<? super T> scopeCoroutine, R r, AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        Object obj;
        Object obj2;
        scopeCoroutine.initParentJob$kotlinx_coroutines_core();
        try {
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        if (pVar != null) {
            C15138d0.m399a(pVar, 2);
            obj = pVar.invoke(r, scopeCoroutine);
            if (obj == C15064c.m478a()) {
                obj2 = C15064c.m478a();
            } else {
                Object makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj);
                if (makeCompletingOnce$kotlinx_coroutines_core == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                    obj2 = C15064c.m478a();
                } else if (makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    Throwable th2 = ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
                    AbstractC15044d<? super T> dVar = scopeCoroutine.uCont;
                    Throwable th3 = th2;
                    if (DebugKt.getRECOVER_STACK_TRACES()) {
                        th3 = !(dVar instanceof AbstractC15069e) ? th2 : StackTraceRecoveryKt.access$recoverFromStackFrame(th2, (AbstractC15069e) dVar);
                    }
                    throw th3;
                } else {
                    obj2 = JobSupportKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
                }
            }
            return obj2;
        }
        throw new C14986p("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    public static final <T, R> Object startUndispatchedOrReturnIgnoreTimeout(ScopeCoroutine<? super T> scopeCoroutine, R r, AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        Object obj;
        Object obj2;
        scopeCoroutine.initParentJob$kotlinx_coroutines_core();
        boolean z = false;
        try {
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        if (pVar != null) {
            C15138d0.m399a(pVar, 2);
            obj = pVar.invoke(r, scopeCoroutine);
            if (obj == C15064c.m478a()) {
                obj2 = C15064c.m478a();
            } else {
                Object makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj);
                if (makeCompletingOnce$kotlinx_coroutines_core == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
                    obj2 = C15064c.m478a();
                } else if (makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core;
                    Throwable th2 = completedExceptionally.cause;
                    if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).coroutine != scopeCoroutine) {
                        z = true;
                    }
                    if (z) {
                        Throwable th3 = completedExceptionally.cause;
                        AbstractC15044d<? super T> dVar = scopeCoroutine.uCont;
                        Throwable th4 = th3;
                        if (DebugKt.getRECOVER_STACK_TRACES()) {
                            th4 = !(dVar instanceof AbstractC15069e) ? th3 : StackTraceRecoveryKt.access$recoverFromStackFrame(th3, (AbstractC15069e) dVar);
                        }
                        throw th4;
                    }
                    obj2 = obj;
                    if (obj instanceof CompletedExceptionally) {
                        Throwable th5 = ((CompletedExceptionally) obj).cause;
                        AbstractC15044d<? super T> dVar2 = scopeCoroutine.uCont;
                        Throwable th6 = th5;
                        if (DebugKt.getRECOVER_STACK_TRACES()) {
                            th6 = !(dVar2 instanceof AbstractC15069e) ? th5 : StackTraceRecoveryKt.access$recoverFromStackFrame(th5, (AbstractC15069e) dVar2);
                        }
                        throw th6;
                    }
                } else {
                    obj2 = JobSupportKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
                }
            }
            return obj2;
        }
        throw new C14986p("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
    }

    public static final <T> Object undispatchedResult(ScopeCoroutine<? super T> scopeCoroutine, AbstractC15118l<? super Throwable, Boolean> lVar, AbstractC15107a<? extends Object> aVar) {
        Object obj;
        Object makeCompletingOnce$kotlinx_coroutines_core;
        Object obj2;
        try {
            obj = aVar.invoke();
        } catch (Throwable th) {
            obj = new CompletedExceptionally(th, false, 2, null);
        }
        if (!(obj == C15064c.m478a() || (makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(obj)) == JobSupportKt.COMPLETING_WAITING_CHILDREN)) {
            if (makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                CompletedExceptionally completedExceptionally = (CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core;
                if (lVar.invoke(completedExceptionally.cause).booleanValue()) {
                    Throwable th2 = completedExceptionally.cause;
                    AbstractC15044d<? super T> dVar = scopeCoroutine.uCont;
                    Throwable th3 = th2;
                    if (DebugKt.getRECOVER_STACK_TRACES()) {
                        th3 = !(dVar instanceof AbstractC15069e) ? th2 : StackTraceRecoveryKt.access$recoverFromStackFrame(th2, (AbstractC15069e) dVar);
                    }
                    throw th3;
                }
                obj2 = obj;
                if (obj instanceof CompletedExceptionally) {
                    Throwable th4 = ((CompletedExceptionally) obj).cause;
                    AbstractC15044d<? super T> dVar2 = scopeCoroutine.uCont;
                    Throwable th5 = th4;
                    if (DebugKt.getRECOVER_STACK_TRACES()) {
                        th5 = !(dVar2 instanceof AbstractC15069e) ? th4 : StackTraceRecoveryKt.access$recoverFromStackFrame(th4, (AbstractC15069e) dVar2);
                    }
                    throw th5;
                }
            } else {
                obj2 = JobSupportKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
            }
            return obj2;
        }
        return C15064c.m478a();
    }
}
