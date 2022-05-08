package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "cause", "", "attempt", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", m1914f = "Errors.kt", m1913l = {124}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$3.class */
final class FlowKt__ErrorsKt$retry$3 extends SuspendLambda implements Function4<FlowCollector<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {

    /* renamed from: g */
    private FlowCollector f22743g;

    /* renamed from: h */
    private Throwable f22744h;

    /* renamed from: i */
    private long f22745i;

    /* renamed from: j */
    Object f22746j;

    /* renamed from: k */
    Object f22747k;

    /* renamed from: l */
    long f22748l;

    /* renamed from: m */
    int f22749m;

    /* renamed from: n */
    final /* synthetic */ long f22750n;

    /* renamed from: o */
    final /* synthetic */ Function2 f22751o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ErrorsKt$retry$3(long j, Function2 function2, Continuation continuation) {
        super(4, continuation);
        this.f22750n = j;
        this.f22751o = function2;
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m705d(@NotNull FlowCollector<? super T> flowCollector, @NotNull Throwable th, long j, @NotNull Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$3 flowKt__ErrorsKt$retry$3 = new FlowKt__ErrorsKt$retry$3(this.f22750n, this.f22751o, continuation);
        flowKt__ErrorsKt$retry$3.f22743g = flowCollector;
        flowKt__ErrorsKt$retry$3.f22744h = th;
        flowKt__ErrorsKt$retry$3.f22745i = j;
        return flowKt__ErrorsKt$retry$3;
    }

    @Override // kotlin.jvm.functions.Function4
    /* renamed from: h */
    public final Object mo643h(Object obj, Throwable th, Long l, Continuation<? super Boolean> continuation) {
        return ((FlowKt__ErrorsKt$retry$3) m705d((FlowCollector) obj, th, l.longValue(), continuation)).invokeSuspend(Unit.f20447a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0091, code lost:
        if (((java.lang.Boolean) r6).booleanValue() != false) goto L_0x009a;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r7 = r0
            r0 = r5
            int r0 = r0.f22749m
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0038
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x002e
            r0 = r5
            java.lang.Object r0 = r0.f22747k
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            r10 = r0
            r0 = r5
            java.lang.Object r0 = r0.f22746j
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            r10 = r0
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            goto L_0x008a
        L_0x002e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0038:
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            r0 = r5
            kotlinx.coroutines.flow.FlowCollector r0 = r0.f22743g
            r10 = r0
            r0 = r5
            java.lang.Throwable r0 = r0.f22744h
            r11 = r0
            r0 = r5
            long r0 = r0.f22745i
            r12 = r0
            r0 = r12
            r1 = r5
            long r1 = r1.f22750n
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0097
            r0 = r5
            kotlin.jvm.functions.Function2 r0 = r0.f22751o
            r6 = r0
            r0 = r5
            r1 = r10
            r0.f22746j = r1
            r0 = r5
            r1 = r11
            r0.f22747k = r1
            r0 = r5
            r1 = r12
            r0.f22748l = r1
            r0 = r5
            r1 = 1
            r0.f22749m = r1
            r0 = r6
            r1 = r11
            r2 = r5
            java.lang.Object r0 = r0.mo422o(r1, r2)
            r10 = r0
            r0 = r10
            r6 = r0
            r0 = r10
            r1 = r7
            if (r0 != r1) goto L_0x008a
            r0 = r7
            return r0
        L_0x008a:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0097
            goto L_0x009a
        L_0x0097:
            r0 = 0
            r9 = r0
        L_0x009a:
            r0 = r9
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.m1919a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
