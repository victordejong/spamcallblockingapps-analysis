package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "e", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$onErrorCollect$2", m1914f = "Errors.kt", m1913l = {227}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$onErrorCollect$2.class */
final class FlowKt__ErrorsKt$onErrorCollect$2 extends SuspendLambda implements Function3<FlowCollector<? super T>, Throwable, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f22732g;

    /* renamed from: h */
    private Throwable f22733h;

    /* renamed from: i */
    Object f22734i;

    /* renamed from: j */
    Object f22735j;

    /* renamed from: k */
    Object f22736k;

    /* renamed from: l */
    Object f22737l;

    /* renamed from: m */
    int f22738m;

    /* renamed from: n */
    final /* synthetic */ Function1 f22739n;

    /* renamed from: o */
    final /* synthetic */ Flow f22740o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ErrorsKt$onErrorCollect$2(Function1 function1, Flow flow, Continuation continuation) {
        super(3, continuation);
        this.f22739n = function1;
        this.f22740o = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(Object obj, Throwable th, Continuation<? super Unit> continuation) {
        return ((FlowKt__ErrorsKt$onErrorCollect$2) m706d((FlowCollector) obj, th, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m706d(@NotNull FlowCollector<? super T> flowCollector, @NotNull Throwable th, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__ErrorsKt$onErrorCollect$2 flowKt__ErrorsKt$onErrorCollect$2 = new FlowKt__ErrorsKt$onErrorCollect$2(this.f22739n, this.f22740o, continuation);
        flowKt__ErrorsKt$onErrorCollect$2.f22732g = flowCollector;
        flowKt__ErrorsKt$onErrorCollect$2.f22733h = th;
        return flowKt__ErrorsKt$onErrorCollect$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22738m;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f22732g;
            Throwable th = this.f22733h;
            if (((Boolean) this.f22739n.invoke(th)).booleanValue()) {
                Flow flow = this.f22740o;
                this.f22734i = flowCollector;
                this.f22735j = th;
                this.f22736k = flowCollector;
                this.f22737l = flow;
                this.f22738m = 1;
                if (flow.mo589a(flowCollector, this) == d) {
                    return d;
                }
            } else {
                throw th;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.f22737l;
            FlowCollector flowCollector2 = (FlowCollector) this.f22736k;
            Throwable th2 = (Throwable) this.f22735j;
            FlowCollector flowCollector3 = (FlowCollector) this.f22734i;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }
}
