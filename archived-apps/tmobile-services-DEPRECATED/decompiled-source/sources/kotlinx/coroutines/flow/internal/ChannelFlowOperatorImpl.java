package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B)\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0094@ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "create", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "flowCollect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/Flow;", "flow", "<init>", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl.class */
public final class ChannelFlowOperatorImpl<T> extends ChannelFlowOperator<T, T> {
    public ChannelFlowOperatorImpl(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext, int i) {
        super(flow, coroutineContext, i);
    }

    public /* synthetic */ ChannelFlowOperatorImpl(Flow flow, CoroutineContext coroutineContext, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(flow, (i2 & 2) != 0 ? EmptyCoroutineContext.f20645f : coroutineContext, (i2 & 4) != 0 ? -3 : i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    /* renamed from: f */
    protected ChannelFlow<T> mo614f(@NotNull CoroutineContext coroutineContext, int i) {
        return new ChannelFlowOperatorImpl(this.f23681c, coroutineContext, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    @Nullable
    /* renamed from: m */
    protected Object mo617m(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object a = this.f23681c.mo589a(flowCollector, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return a == d ? a : Unit.f20447a;
    }
}
