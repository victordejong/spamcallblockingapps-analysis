package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", m1914f = "Interruptible.kt", m1913l = {}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/InterruptibleKt$runInterruptible$2.class */
final class InterruptibleKt$runInterruptible$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {

    /* renamed from: g */
    private CoroutineScope f21191g;

    /* renamed from: h */
    int f21192h;

    /* renamed from: i */
    final /* synthetic */ Function0 f21193i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InterruptibleKt$runInterruptible$2(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f21193i = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this.f21193i, continuation);
        interruptibleKt$runInterruptible$2.f21191g = (CoroutineScope) obj;
        return interruptibleKt$runInterruptible$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object b;
        IntrinsicsKt__IntrinsicsKt.m1920d();
        if (this.f21192h == 0) {
            ResultKt.m2472b(obj);
            b = InterruptibleKt.m1227b(this.f21191g.mo567u(), this.f21193i);
            return b;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Object obj) {
        return ((InterruptibleKt$runInterruptible$2) create(coroutineScope, (Continuation) obj)).invokeSuspend(Unit.f20447a);
    }
}
