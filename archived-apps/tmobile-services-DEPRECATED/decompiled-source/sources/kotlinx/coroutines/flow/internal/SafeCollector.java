package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u001d\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0004¢\u0006\u0004\b(\u0010)J)\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00028��H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u000b\u001a\u0004\u0018\u00010\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\r2\u0006\u0010\u0007\u001a\u00028��H\u0002¢\u0006\u0004\b\u000b\u0010\u0010J!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0007\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J$\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0015H\u0016ø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00048��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u00028��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "previousContext", FirebaseAnalytics.Param.VALUE, "", "checkContext", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "uCont", "", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;", "exception", "exceptionTransparencyViolated", "(Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;Ljava/lang/Object;)V", "Lkotlin/Result;", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "()V", "collectContext", "Lkotlin/coroutines/CoroutineContext;", "", "collectContextSize", "I", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "completion", "Lkotlin/coroutines/Continuation;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "lastEmissionContext", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector.class */
public final class SafeCollector<T> extends ContinuationImpl implements FlowCollector<T> {
    @JvmField

    /* renamed from: f */
    public final int f23866f;

    /* renamed from: g */
    private CoroutineContext f23867g;

    /* renamed from: h */
    private Continuation<? super Unit> f23868h;
    @JvmField
    @NotNull

    /* renamed from: i */
    public final FlowCollector<T> f23869i;
    @JvmField
    @NotNull

    /* renamed from: j */
    public final CoroutineContext f23870j;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(@NotNull FlowCollector<? super T> flowCollector, @NotNull CoroutineContext coroutineContext) {
        super(NoOpContinuation.f23862g, EmptyCoroutineContext.f20645f);
        this.f23869i = flowCollector;
        this.f23870j = coroutineContext;
        this.f23866f = ((Number) coroutineContext.fold(0, SafeCollector$collectContextSize$1.f23871f)).intValue();
    }

    /* renamed from: d */
    private final void m599d(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, T t) {
        if (!(coroutineContext2 instanceof DownstreamExceptionElement)) {
            SafeCollector_commonKt.m592a(this, coroutineContext);
            this.f23867g = coroutineContext;
            return;
        }
        m597f((DownstreamExceptionElement) coroutineContext2, t);
        throw null;
    }

    /* renamed from: e */
    private final Object m598e(Continuation<? super Unit> continuation, T t) {
        CoroutineContext context = continuation.getContext();
        JobKt.m1212g(context);
        CoroutineContext coroutineContext = this.f23867g;
        if (coroutineContext != context) {
            m599d(context, coroutineContext, t);
        }
        this.f23868h = continuation;
        Function3 a = SafeCollectorKt.m595a();
        FlowCollector<T> flowCollector = this.f23869i;
        if (flowCollector != null) {
            return a.mo594a(flowCollector, t, this);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
    }

    /* renamed from: f */
    private final void m597f(DownstreamExceptionElement downstreamExceptionElement, Object obj) {
        String f;
        f = StringsKt__IndentKt.m1503f("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + downstreamExceptionElement.f23854g + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ");
        throw new IllegalStateException(f.toString());
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    /* renamed from: b */
    public Object mo588b(T t, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2;
        try {
            Object e = m598e(continuation, t);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (e == d) {
                DebugProbesKt.m1904c(continuation);
            }
            d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
            return e == d2 ? e : Unit.f20447a;
        } catch (Throwable th) {
            this.f23867g = new DownstreamExceptionElement(th);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L_0x001b;
     */
    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.coroutines.CoroutineContext getContext() {
        /*
            r2 = this;
            r0 = r2
            kotlin.coroutines.Continuation<? super kotlin.Unit> r0 = r0.f23868h
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0017
            r0 = r3
            kotlin.coroutines.CoroutineContext r0 = r0.getContext()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0017
            goto L_0x001b
        L_0x0017:
            kotlin.coroutines.EmptyCoroutineContext r0 = kotlin.coroutines.EmptyCoroutineContext.f20645f
            r3 = r0
        L_0x001b:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.SafeCollector.getContext():kotlin.coroutines.CoroutineContext");
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Throwable d2 = Result.m2479d(obj);
        if (d2 != null) {
            this.f23867g = new DownstreamExceptionElement(d2);
        }
        Continuation<? super Unit> continuation = this.f23868h;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
