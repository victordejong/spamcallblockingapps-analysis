package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.class */
final class FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Unit f22508g;

    /* renamed from: h */
    Object f22509h;

    /* renamed from: i */
    Object f22510i;

    /* renamed from: j */
    int f22511j;

    /* renamed from: k */
    final /* synthetic */ Ref.ObjectRef f22512k;

    /* renamed from: l */
    final /* synthetic */ ReceiveChannel f22513l;

    /* renamed from: m */
    final /* synthetic */ Ref.ObjectRef f22514m;

    /* renamed from: n */
    final /* synthetic */ FlowCollector f22515n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(Continuation continuation, Ref.ObjectRef objectRef, ReceiveChannel receiveChannel, Ref.ObjectRef objectRef2, FlowCollector flowCollector) {
        super(2, continuation);
        this.f22512k = objectRef;
        this.f22513l = receiveChannel;
        this.f22514m = objectRef2;
        this.f22515n = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 = new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(continuation, this.f22512k, this.f22513l, this.f22514m, this.f22515n);
        flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.f22508g = (Unit) obj;
        return flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r6 = r0
            r0 = r4
            int r0 = r0.f22511j
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002c
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0022
            r0 = r4
            java.lang.Object r0 = r0.f22509h
            kotlin.Unit r0 = (kotlin.Unit) r0
            r8 = r0
            r0 = r5
            kotlin.ResultKt.m2472b(r0)
            goto L_0x0084
        L_0x0022:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x002c:
            r0 = r5
            kotlin.ResultKt.m2472b(r0)
            r0 = r4
            kotlin.Unit r0 = r0.f22508g
            r9 = r0
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22514m
            r10 = r0
            r0 = r10
            T r0 = r0.f20751f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0088
            r0 = 0
            r5 = r0
            r0 = r10
            r1 = 0
            r0.f20751f = r1
            r0 = r4
            kotlinx.coroutines.flow.FlowCollector r0 = r0.f22515n
            r10 = r0
            r0 = r8
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f23864a
            if (r0 != r1) goto L_0x0061
            goto L_0x0064
        L_0x0061:
            r0 = r8
            r5 = r0
        L_0x0064:
            r0 = r4
            r1 = r9
            r0.f22509h = r1
            r0 = r4
            r1 = r8
            r0.f22510i = r1
            r0 = r4
            r1 = 1
            r0.f22511j = r1
            r0 = r10
            r1 = r5
            r2 = r4
            java.lang.Object r0 = r0.mo588b(r1, r2)
            r1 = r6
            if (r0 != r1) goto L_0x0084
            r0 = r6
            return r0
        L_0x0084:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        L_0x0088:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Unit unit, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2) create(unit, continuation)).invokeSuspend(Unit.f20447a);
    }
}
