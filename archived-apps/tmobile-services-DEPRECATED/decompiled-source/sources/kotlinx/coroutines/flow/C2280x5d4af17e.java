package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$1$2$1", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$$special$$inlined$let$lambda$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2.class */
final class C2280x5d4af17e extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* renamed from: g */
    int f22494g;

    /* renamed from: h */
    final /* synthetic */ Object f22495h;

    /* renamed from: i */
    final /* synthetic */ SelectBuilder f22496i;

    /* renamed from: j */
    final /* synthetic */ FlowKt__DelayKt$debounce$2 f22497j;

    /* renamed from: k */
    final /* synthetic */ Ref.ObjectRef f22498k;

    /* renamed from: l */
    final /* synthetic */ Ref.ObjectRef f22499l;

    /* renamed from: m */
    final /* synthetic */ FlowCollector f22500m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2280x5d4af17e(Object obj, Continuation continuation, SelectBuilder selectBuilder, FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, FlowCollector flowCollector) {
        super(1, continuation);
        this.f22495h = obj;
        this.f22496i = selectBuilder;
        this.f22497j = flowKt__DelayKt$debounce$2;
        this.f22498k = objectRef;
        this.f22499l = objectRef2;
        this.f22500m = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@NotNull Continuation<?> continuation) {
        return new C2280x5d4af17e(this.f22495h, continuation, this.f22496i, this.f22497j, this.f22498k, this.f22499l, this.f22500m);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((C2280x5d4af17e) create(continuation)).invokeSuspend(Unit.f20447a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22494g;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = null;
            this.f22499l.f20751f = null;
            FlowCollector flowCollector = this.f22500m;
            Symbol symbol = NullSurrogateKt.f23864a;
            Object obj3 = this.f22495h;
            if (obj3 != symbol) {
                obj2 = obj3;
            }
            this.f22494g = 1;
            if (flowCollector.mo588b(obj2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }
}
