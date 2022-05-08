package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a'\u0010\u0005\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\b\u0005\u0010\u0006\u001a5\u0010\n\u001a\u00020\u0004\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\t\u001a\u00020\u0002H��¢\u0006\u0004\b\n\u0010\u000b\u001a\u0017\u0010\f\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u0001H\u0002¢\u0006\u0004\b\f\u0010\r\u001a \u0010\u0010\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a.\u0010\u0016\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014H\u0080\b¢\u0006\u0004\b\u0016\u0010\u0017\"\u001c\u0010\u0018\u001a\u00020\u00028��@\u0001X\u0081T¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u0012\u0004\b\u001a\u0010\u001b\"\u001c\u0010\u001c\u001a\u00020\u00028��@\u0001X\u0081T¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u0012\u0004\b\u001d\u0010\u001b\"\u001c\u0010\u001e\u001a\u00020\u00028��@\u0001X\u0081T¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u0012\u0004\b\u001f\u0010\u001b\"\u001a\u0010!\u001a\u00020 *\u00020\u00028@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"\"\u001a\u0010#\u001a\u00020 *\u00020\u00028@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\"¨\u0006$"}, d2 = {"T", "Lkotlinx/coroutines/DispatchedTask;", "", "mode", "", "dispatch", "(Lkotlinx/coroutines/DispatchedTask;I)V", "Lkotlin/coroutines/Continuation;", "delegate", "useMode", "resume", "(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;I)V", "resumeUnconfined", "(Lkotlinx/coroutines/DispatchedTask;)V", "", "exception", "resumeWithStackTrace", "(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/EventLoop;", "eventLoop", "Lkotlin/Function0;", "block", "runUnconfinedEventLoop", "(Lkotlinx/coroutines/DispatchedTask;Lkotlinx/coroutines/EventLoop;Lkotlin/Function0;)V", "MODE_ATOMIC_DEFAULT", "I", "getMODE_ATOMIC_DEFAULT$annotations", "()V", "MODE_CANCELLABLE", "getMODE_CANCELLABLE$annotations", "MODE_UNDISPATCHED", "getMODE_UNDISPATCHED$annotations", "", "isCancellableMode", "(I)Z", "isDispatchedMode", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DispatchedTaskKt.class */
public final class DispatchedTaskKt {
    /* renamed from: a */
    public static final <T> void m1273a(@NotNull DispatchedTask<? super T> dispatchedTask, int i) {
        Continuation<? super T> b = dispatchedTask.mo1278b();
        if (!m1271c(i) || !(b instanceof DispatchedContinuation) || m1272b(i) != m1272b(dispatchedTask.f21165h)) {
            m1270d(dispatchedTask, b, i);
            return;
        }
        CoroutineDispatcher coroutineDispatcher = ((DispatchedContinuation) b).f21160l;
        CoroutineContext context = b.getContext();
        if (coroutineDispatcher.mo478V(context)) {
            coroutineDispatcher.mo241t(context, dispatchedTask);
        } else {
            m1269e(dispatchedTask);
        }
    }

    /* renamed from: b */
    public static final boolean m1272b(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static final boolean m1271c(int i) {
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: d */
    public static final <T> void m1270d(@NotNull DispatchedTask<? super T> dispatchedTask, @NotNull Continuation<? super T> continuation, int i) {
        Throwable th;
        Object obj;
        Object g = dispatchedTask.mo1274g();
        Throwable d = dispatchedTask.m1277d(g);
        if (d != null) {
            th = d;
            if (DebugKt.m1305d()) {
                th = !(continuation instanceof CoroutineStackFrame) ? d : StackTraceRecoveryKt.m447j(d, (CoroutineStackFrame) continuation);
            }
        } else {
            th = null;
        }
        if (th != null) {
            Result.Companion companion = Result.f20418g;
            obj = ResultKt.m2473a(th);
        } else {
            Result.Companion companion2 = Result.f20418g;
            obj = dispatchedTask.mo1276e(g);
        }
        Result.m2481b(obj);
        if (i == 0) {
            continuation.resumeWith(obj);
        } else if (i == 1) {
            DispatchedContinuationKt.m1284b(continuation, obj);
        } else if (i != 2) {
            throw new IllegalStateException(("Invalid mode " + i).toString());
        } else if (continuation != null) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            CoroutineContext context = dispatchedContinuation.getContext();
            Object c = ThreadContextKt.m427c(context, dispatchedContinuation.f21159k);
            try {
                dispatchedContinuation.f21161m.resumeWith(obj);
                Unit unit = Unit.f20447a;
            } finally {
                ThreadContextKt.m429a(context, c);
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
        }
    }

    /* renamed from: e */
    private static final void m1269e(DispatchedTask<?> dispatchedTask) {
        EventLoop a = ThreadLocalEventLoop.f21244b.m1110a();
        if (a.m1261e0()) {
            a.m1264Y(dispatchedTask);
            return;
        }
        a.m1263b0(true);
        try {
            m1270d(dispatchedTask, dispatchedTask.mo1278b(), 2);
            do {
            } while (a.m1259j0());
        } finally {
            try {
            } finally {
            }
        }
    }
}
