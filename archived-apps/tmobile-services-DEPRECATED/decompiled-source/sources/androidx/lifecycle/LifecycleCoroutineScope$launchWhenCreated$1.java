package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "androidx.lifecycle.LifecycleCoroutineScope$launchWhenCreated$1", m1914f = "Lifecycle.kt", m1913l = {74}, m1912m = "invokeSuspend")
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScope$launchWhenCreated$1.class */
final class LifecycleCoroutineScope$launchWhenCreated$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f3995g;

    /* renamed from: h */
    Object f3996h;

    /* renamed from: i */
    int f3997i;

    /* renamed from: j */
    final /* synthetic */ LifecycleCoroutineScope f3998j;

    /* renamed from: k */
    final /* synthetic */ Function2 f3999k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LifecycleCoroutineScope$launchWhenCreated$1(LifecycleCoroutineScope lifecycleCoroutineScope, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f3998j = lifecycleCoroutineScope;
        this.f3999k = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.m1829f(completion, "completion");
        LifecycleCoroutineScope$launchWhenCreated$1 lifecycleCoroutineScope$launchWhenCreated$1 = new LifecycleCoroutineScope$launchWhenCreated$1(this.f3998j, this.f3999k, completion);
        lifecycleCoroutineScope$launchWhenCreated$1.f3995g = (CoroutineScope) obj;
        return lifecycleCoroutineScope$launchWhenCreated$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f3997i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f3995g;
            Lifecycle h = this.f3998j.mo18236h();
            Function2 function2 = this.f3999k;
            this.f3996h = coroutineScope;
            this.f3997i = 1;
            if (PausingDispatcherKt.m18187a(h, function2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f3996h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LifecycleCoroutineScope$launchWhenCreated$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
