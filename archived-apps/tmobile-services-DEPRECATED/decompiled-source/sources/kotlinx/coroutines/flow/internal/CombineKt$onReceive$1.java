package kotlinx.coroutines.flow.internal;

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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.CombineKt$onReceive$1", m1914f = "Combine.kt", m1913l = {89}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$onReceive$1.class */
public final class CombineKt$onReceive$1 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23847g;

    /* renamed from: h */
    Object f23848h;

    /* renamed from: i */
    int f23849i;

    /* renamed from: j */
    final /* synthetic */ Function0 f23850j;

    /* renamed from: k */
    final /* synthetic */ Function2 f23851k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$onReceive$1(Function0 function0, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f23850j = function0;
        this.f23851k = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$onReceive$1 combineKt$onReceive$1 = new CombineKt$onReceive$1(this.f23850j, this.f23851k, continuation);
        combineKt$onReceive$1.f23847g = obj;
        return combineKt$onReceive$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23849i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f23847g;
            if (obj2 == null) {
                this.f23850j.invoke();
            } else {
                Function2 function2 = this.f23851k;
                this.f23848h = obj2;
                this.f23849i = 1;
                if (function2.mo422o(obj2, this) == d) {
                    return d;
                }
            }
        } else if (i == 1) {
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((CombineKt$onReceive$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
