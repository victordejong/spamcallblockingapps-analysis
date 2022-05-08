package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006H\u0086@"}, d2 = {"firstOrNull", "", "T", "Lkotlinx/coroutines/flow/Flow;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "continuation"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m1914f = "Reduce.kt", m1913l = {208}, m1912m = "firstOrNull")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3.class */
public final class FlowKt__ReduceKt$firstOrNull$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f23156f;

    /* renamed from: g */
    int f23157g;

    /* renamed from: h */
    Object f23158h;

    /* renamed from: i */
    Object f23159i;

    /* renamed from: j */
    Object f23160j;

    /* renamed from: k */
    Object f23161k;

    /* renamed from: l */
    Object f23162l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$firstOrNull$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f23156f = obj;
        this.f23157g |= Integer.MIN_VALUE;
        return FlowKt.m734k(null, null, this);
    }
}
