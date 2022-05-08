package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$onReceive$1", "kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$$special$$inlined$onReceive$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class C2431x2d5a9c56 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23732g;

    /* renamed from: h */
    Object f23733h;

    /* renamed from: i */
    int f23734i;

    /* renamed from: j */
    final /* synthetic */ Function2 f23735j;

    /* renamed from: k */
    final /* synthetic */ int f23736k;

    /* renamed from: l */
    final /* synthetic */ CombineKt$combineInternal$2 f23737l;

    /* renamed from: m */
    final /* synthetic */ int f23738m;

    /* renamed from: n */
    final /* synthetic */ Boolean[] f23739n;

    /* renamed from: o */
    final /* synthetic */ Ref.ObjectRef f23740o;

    /* renamed from: p */
    final /* synthetic */ Object[] f23741p;

    /* renamed from: q */
    final /* synthetic */ Ref.IntRef f23742q;

    /* renamed from: r */
    final /* synthetic */ Ref.IntRef f23743r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2431x2d5a9c56(Function2 function2, Continuation continuation, int i, CombineKt$combineInternal$2 combineKt$combineInternal$2, int i2, Boolean[] boolArr, Ref.ObjectRef objectRef, Object[] objArr, Ref.IntRef intRef, Ref.IntRef intRef2) {
        super(2, continuation);
        this.f23735j = function2;
        this.f23736k = i;
        this.f23737l = combineKt$combineInternal$2;
        this.f23738m = i2;
        this.f23739n = boolArr;
        this.f23740o = objectRef;
        this.f23741p = objArr;
        this.f23742q = intRef;
        this.f23743r = intRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2431x2d5a9c56 combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2 = new C2431x2d5a9c56(this.f23735j, continuation, this.f23736k, this.f23737l, this.f23738m, this.f23739n, this.f23740o, this.f23741p, this.f23742q, this.f23743r);
        combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2.f23732g = obj;
        return combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23734i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f23732g;
            if (obj2 == null) {
                this.f23739n[this.f23736k] = Boxing.m1919a(true);
                this.f23743r.f20749f--;
            } else {
                Function2 function2 = this.f23735j;
                this.f23733h = obj2;
                this.f23734i = 1;
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
        return ((C2431x2d5a9c56) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
