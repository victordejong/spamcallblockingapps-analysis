package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0003\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u00020\u0004BM\u00129\u0010\"\u001a5\b\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0002\b\n\u0012\u0006\u0010\u0005\u001a\u00028��ø\u0001��¢\u0006\u0004\b#\u0010$J\u001b\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u0005\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007Je\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000329\u0010\u000b\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0002\b\n2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0003H\u0002ø\u0001��¢\u0006\u0004\b\r\u0010\u000eJ \u0010\u0012\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000fH\u0016ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00028\u0001¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u0006\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0016\"\u0004\b\u0003\u0010\u0017*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00182\u0006\u0010\u0005\u001a\u00028\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0019R \u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dRL\u0010\u001f\u001a5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\t0\b¢\u0006\u0002\b\n8\u0002@\u0002X\u0082\u000eø\u0001��¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000f8\u0002@\u0002X\u0082\u000eø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0010\u0010!R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010!\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006%"}, d2 = {"Lkotlin/DeepRecursiveScopeImpl;", "T", "R", "Lkotlin/coroutines/Continuation;", "Lkotlin/DeepRecursiveScope;", FirebaseAnalytics.Param.VALUE, "callRecursive", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "", "Lkotlin/ExtensionFunctionType;", "currentFunction", "cont", "crossFunctionCompletion", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "runCallLoop", "()Ljava/lang/Object;", "U", "S", "Lkotlin/DeepRecursiveFunction;", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "function", "Lkotlin/jvm/functions/Function3;", "Ljava/lang/Object;", "block", "<init>", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalStdlibApi
/* loaded from: classes2-dex2jar.jar:kotlin/DeepRecursiveScopeImpl.class */
final class DeepRecursiveScopeImpl<T, R> extends DeepRecursiveScope<T, R> implements Continuation<R> {

    /* renamed from: f */
    private Function3<? super DeepRecursiveScope<?, ?>, Object, ? super Continuation<Object>, ? extends Object> f20402f;

    /* renamed from: g */
    private Continuation<Object> f20403g;

    /* renamed from: h */
    private Object f20404h;

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f20645f;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        this.f20404h = obj;
    }
}
