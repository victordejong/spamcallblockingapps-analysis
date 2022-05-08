package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1.class */
final class FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23856g;

    /* renamed from: h */
    Object f23857h;

    /* renamed from: i */
    int f23858i;

    /* renamed from: j */
    final /* synthetic */ FlowCollector f23859j;

    /* renamed from: k */
    final /* synthetic */ FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1 f23860k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1(FlowCollector flowCollector, Continuation continuation, FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1 flowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1) {
        super(2, continuation);
        this.f23859j = flowCollector;
        this.f23860k = flowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1 flowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1 = new FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1(this.f23859j, continuation, this.f23860k);
        flowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1.f23856g = (CoroutineScope) obj;
        return flowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23858i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f23856g;
            Function3 function3 = this.f23860k.f23855a;
            FlowCollector flowCollector = this.f23859j;
            this.f23857h = coroutineScope;
            this.f23858i = 1;
            InlineMarker.m1835c(6);
            Object a = function3.mo594a(coroutineScope, flowCollector, this);
            InlineMarker.m1835c(7);
            if (a == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f23857h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1$lambda$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
