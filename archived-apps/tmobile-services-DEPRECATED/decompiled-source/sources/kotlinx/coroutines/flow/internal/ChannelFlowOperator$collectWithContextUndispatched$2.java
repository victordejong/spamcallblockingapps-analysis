package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "S", "T", "it", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", m1914f = "ChannelFlow.kt", m1913l = {123}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2.class */
public final class ChannelFlowOperator$collectWithContextUndispatched$2 extends SuspendLambda implements Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23682g;

    /* renamed from: h */
    Object f23683h;

    /* renamed from: i */
    int f23684i;

    /* renamed from: j */
    final /* synthetic */ ChannelFlowOperator f23685j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowOperator$collectWithContextUndispatched$2(ChannelFlowOperator channelFlowOperator, Continuation continuation) {
        super(2, continuation);
        this.f23685j = channelFlowOperator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this.f23685j, continuation);
        channelFlowOperator$collectWithContextUndispatched$2.f23682g = (FlowCollector) obj;
        return channelFlowOperator$collectWithContextUndispatched$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23684i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f23682g;
            ChannelFlowOperator channelFlowOperator = this.f23685j;
            this.f23683h = flowCollector;
            this.f23684i = 1;
            if (channelFlowOperator.mo617m(flowCollector, this) == d) {
                return d;
            }
        } else if (i == 1) {
            FlowCollector flowCollector2 = (FlowCollector) this.f23683h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((ChannelFlowOperator$collectWithContextUndispatched$2) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
