package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/channels/ProducerScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$values$1", m1914f = "Delay.kt", m1913l = {185}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$values$1.class */
final class FlowKt__DelayKt$debounce$2$values$1 extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f22527g;

    /* renamed from: h */
    Object f22528h;

    /* renamed from: i */
    Object f22529i;

    /* renamed from: j */
    int f22530j;

    /* renamed from: k */
    final /* synthetic */ FlowKt__DelayKt$debounce$2 f22531k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounce$2$values$1(FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2, Continuation continuation) {
        super(2, continuation);
        this.f22531k = flowKt__DelayKt$debounce$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__DelayKt$debounce$2$values$1 flowKt__DelayKt$debounce$2$values$1 = new FlowKt__DelayKt$debounce$2$values$1(this.f22531k, continuation);
        flowKt__DelayKt$debounce$2$values$1.f22527g = (ProducerScope) obj;
        return flowKt__DelayKt$debounce$2$values$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22530j;
        if (i == 0) {
            ResultKt.m2472b(obj);
            final ProducerScope producerScope = this.f22527g;
            Flow flow = this.f22531k.f22525o;
            Object flowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                @Nullable
                /* renamed from: b */
                public Object mo588b(Object obj2, @NotNull Continuation continuation) {
                    Object d2;
                    ProducerScope producerScope2 = ProducerScope.this;
                    if (obj2 == null) {
                        obj2 = NullSurrogateKt.f23864a;
                    }
                    Object A = producerScope2.mo805A(obj2, continuation);
                    d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                    return A == d2 ? A : Unit.f20447a;
                }
            };
            this.f22528h = producerScope;
            this.f22529i = flow;
            this.f22530j = 1;
            if (flow.mo589a(flowKt__DelayKt$debounce$2$values$1$invokeSuspend$$inlined$collect$1, this) == d) {
                return d;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.f22529i;
            ProducerScope producerScope2 = (ProducerScope) this.f22528h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(ProducerScope<? super Object> producerScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounce$2$values$1) create(producerScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
