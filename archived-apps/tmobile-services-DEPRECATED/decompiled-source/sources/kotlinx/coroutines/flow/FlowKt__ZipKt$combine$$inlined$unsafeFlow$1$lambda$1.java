package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "a", "b", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.class */
final class FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 extends SuspendLambda implements Function4<FlowCollector<? super R>, T1, T2, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23459g;

    /* renamed from: h */
    private Object f23460h;

    /* renamed from: i */
    private Object f23461i;

    /* renamed from: j */
    Object f23462j;

    /* renamed from: k */
    Object f23463k;

    /* renamed from: l */
    Object f23464l;

    /* renamed from: m */
    Object f23465m;

    /* renamed from: n */
    int f23466n;

    /* renamed from: o */
    final /* synthetic */ FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 f23467o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(Continuation continuation, FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1) {
        super(4, continuation);
        this.f23467o = flowKt__ZipKt$combine$$inlined$unsafeFlow$1;
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m663d(@NotNull FlowCollector<? super R> flowCollector, T1 t1, T2 t2, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(continuation, this.f23467o);
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.f23459g = flowCollector;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.f23460h = t1;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.f23461i = t2;
        return flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // kotlin.jvm.functions.Function4
    /* renamed from: h */
    public final Object mo643h(Object obj, Object obj2, Object obj3, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1) m663d((FlowCollector) obj, obj2, obj3, continuation)).invokeSuspend(Unit.f20447a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        Object obj2;
        FlowCollector flowCollector;
        Object obj3;
        FlowCollector flowCollector2;
        Object obj4;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23466n;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector3 = this.f23459g;
            obj4 = this.f23460h;
            obj3 = this.f23461i;
            Function3 function3 = this.f23467o.f23458c;
            this.f23462j = flowCollector3;
            this.f23463k = obj4;
            this.f23464l = obj3;
            this.f23465m = flowCollector3;
            this.f23466n = 1;
            InlineMarker.m1835c(6);
            obj2 = function3.mo594a(obj4, obj3, this);
            InlineMarker.m1835c(7);
            if (obj2 == d) {
                return d;
            }
            flowCollector = flowCollector3;
            flowCollector2 = flowCollector3;
        } else if (i == 1) {
            flowCollector2 = (FlowCollector) this.f23465m;
            obj3 = this.f23464l;
            obj4 = this.f23463k;
            flowCollector = (FlowCollector) this.f23462j;
            ResultKt.m2472b(obj);
            obj2 = obj;
        } else if (i == 2) {
            FlowCollector flowCollector4 = (FlowCollector) this.f23462j;
            ResultKt.m2472b(obj);
            return Unit.f20447a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.f23462j = flowCollector;
        this.f23463k = obj4;
        this.f23464l = obj3;
        this.f23466n = 2;
        if (flowCollector2.mo588b(obj2, this) == d) {
            return d;
        }
        return Unit.f20447a;
    }
}
