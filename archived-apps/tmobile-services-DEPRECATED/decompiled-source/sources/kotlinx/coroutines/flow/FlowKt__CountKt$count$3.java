package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\u0086@"}, d2 = {"count", "", "T", "Lkotlinx/coroutines/flow/Flow;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "continuation", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__CountKt", m1914f = "Count.kt", m1913l = {42}, m1912m = "count")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CountKt$count$3.class */
public final class FlowKt__CountKt$count$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22481f;

    /* renamed from: g */
    int f22482g;

    /* renamed from: h */
    Object f22483h;

    /* renamed from: i */
    Object f22484i;

    /* renamed from: j */
    Object f22485j;

    /* renamed from: k */
    Object f22486k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CountKt$count$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22481f = obj;
        this.f22482g |= Integer.MIN_VALUE;
        return FlowKt.m739f(null, null, this);
    }
}
