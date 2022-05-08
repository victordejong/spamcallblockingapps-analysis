package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", m1914f = "Collect.kt", m1913l = {50}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectKt$launchIn$1.class */
final class FlowKt__CollectKt$launchIn$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f22449g;

    /* renamed from: h */
    Object f22450h;

    /* renamed from: i */
    int f22451i;

    /* renamed from: j */
    final /* synthetic */ Flow f22452j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__CollectKt$launchIn$1(Flow flow, Continuation continuation) {
        super(2, continuation);
        this.f22452j = flow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__CollectKt$launchIn$1 flowKt__CollectKt$launchIn$1 = new FlowKt__CollectKt$launchIn$1(this.f22452j, continuation);
        flowKt__CollectKt$launchIn$1.f22449g = (CoroutineScope) obj;
        return flowKt__CollectKt$launchIn$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22451i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f22449g;
            Flow flow = this.f22452j;
            this.f22450h = coroutineScope;
            this.f22451i = 1;
            if (FlowKt.m742c(flow, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f22450h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__CollectKt$launchIn$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
