package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", m1914f = "ChannelFlow.kt", m1913l = {101}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlow$collect$2.class */
public final class ChannelFlow$collect$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23650g;

    /* renamed from: h */
    Object f23651h;

    /* renamed from: i */
    int f23652i;

    /* renamed from: j */
    final /* synthetic */ ChannelFlow f23653j;

    /* renamed from: k */
    final /* synthetic */ FlowCollector f23654k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collect$2(ChannelFlow channelFlow, FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.f23653j = channelFlow;
        this.f23654k = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.f23653j, this.f23654k, continuation);
        channelFlow$collect$2.f23650g = (CoroutineScope) obj;
        return channelFlow$collect$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23652i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f23650g;
            FlowCollector flowCollector = this.f23654k;
            ReceiveChannel i2 = this.f23653j.mo613i(coroutineScope);
            this.f23651h = coroutineScope;
            this.f23652i = 1;
            if (FlowKt.m738g(flowCollector, i2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f23651h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ChannelFlow$collect$2) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
