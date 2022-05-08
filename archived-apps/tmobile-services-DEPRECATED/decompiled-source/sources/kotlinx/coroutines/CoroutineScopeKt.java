package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0015\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001aO\u0010\r\u001a\u00028��\"\u0004\b��\u0010\u00072'\u0010\f\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b¢\u0006\u0002\b\u000bH\u0086@ø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\r\u0010\u000e\u001a\u0013\u0010\u000f\u001a\u00020��H\u0086Hø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010\u001a%\u0010\u0016\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0016\u0010\u0017\u001a#\u0010\u0016\u001a\u00020\u0015*\u00020\u00022\u0010\b\u0002\u0010\u0014\u001a\n\u0018\u00010\u0018j\u0004\u0018\u0001`\u0019¢\u0006\u0004\b\u0016\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u00020\u0015*\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001d\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001e\"\u001d\u0010 \u001a\u00020\u001f*\u00020\u00028F@\u0006¢\u0006\f\u0012\u0004\b\"\u0010\u001c\u001a\u0004\b \u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/CoroutineScope;", "CoroutineScope", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;", "MainScope", "()Lkotlinx/coroutines/CoroutineScope;", "R", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "coroutineScope", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "currentCoroutineContext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "message", "", "cause", "", "cancel", "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V", "ensureActive", "(Lkotlinx/coroutines/CoroutineScope;)V", "plus", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;", "", "isActive", "(Lkotlinx/coroutines/CoroutineScope;)Z", "isActive$annotations", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineScopeKt.class */
public final class CoroutineScopeKt {
    @NotNull
    /* renamed from: a */
    public static final CoroutineScope m1312a(@NotNull CoroutineContext coroutineContext) {
        CompletableJob b;
        if (coroutineContext.get(Job.f21198d) == null) {
            b = JobKt__JobKt.m1208b(null, 1, null);
            coroutineContext = coroutineContext.plus(b);
        }
        return new ContextScope(coroutineContext);
    }

    /* renamed from: b */
    public static final void m1311b(@NotNull CoroutineScope coroutineScope, @Nullable CancellationException cancellationException) {
        Job job = (Job) coroutineScope.mo567u().get(Job.f21198d);
        if (job != null) {
            job.mo1002a(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + coroutineScope).toString());
    }

    /* renamed from: c */
    public static /* synthetic */ void m1310c(CoroutineScope coroutineScope, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        m1311b(coroutineScope, cancellationException);
    }

    @Nullable
    /* renamed from: d */
    public static final <R> Object m1309d(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super R>, ? extends Object> function2, @NotNull Continuation<? super R> continuation) {
        Object d;
        ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuation.getContext(), continuation);
        Object e = UndispatchedKt.m394e(scopeCoroutine, scopeCoroutine, function2);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (e == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return e;
    }
}
