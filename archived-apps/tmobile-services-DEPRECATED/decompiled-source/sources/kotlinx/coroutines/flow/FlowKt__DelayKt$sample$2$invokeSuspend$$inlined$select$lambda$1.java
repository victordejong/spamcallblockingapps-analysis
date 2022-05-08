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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1.class */
final class FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f22502g;

    /* renamed from: h */
    int f22503h;

    /* renamed from: i */
    final /* synthetic */ Ref.ObjectRef f22504i;

    /* renamed from: j */
    final /* synthetic */ ReceiveChannel f22505j;

    /* renamed from: k */
    final /* synthetic */ Ref.ObjectRef f22506k;

    /* renamed from: l */
    final /* synthetic */ FlowCollector f22507l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1(Continuation continuation, Ref.ObjectRef objectRef, ReceiveChannel receiveChannel, Ref.ObjectRef objectRef2, FlowCollector flowCollector) {
        super(2, continuation);
        this.f22504i = objectRef;
        this.f22505j = receiveChannel;
        this.f22506k = objectRef2;
        this.f22507l = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1 flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1 = new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1(continuation, this.f22504i, this.f22505j, this.f22506k, this.f22507l);
        flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1.f22502g = obj;
        return flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.internal.Symbol, T] */
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
            r0 = r4
            int r0 = r0.f22503h
            if (r0 != 0) goto L_0x0041
            r0 = r5
            kotlin.ResultKt.m2472b(r0)
            r0 = r4
            java.lang.Object r0 = r0.f22502g
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0035
            r0 = r4
            kotlinx.coroutines.channels.ReceiveChannel r0 = r0.f22505j
            kotlinx.coroutines.flow.internal.ChildCancelledException r1 = new kotlinx.coroutines.flow.internal.ChildCancelledException
            r2 = r1
            r2.<init>()
            r0.mo818a(r1)
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22506k
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f23865b
            r0.f20751f = r1
            goto L_0x003d
        L_0x0035:
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22506k
            r1 = r5
            r0.f20751f = r1
        L_0x003d:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        L_0x0041:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
