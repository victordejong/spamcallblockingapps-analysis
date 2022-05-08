package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1", m1914f = "Limit.kt", m1913l = {132}, m1912m = "emit")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1.class */
public final class FlowKt__LimitKt$collectWhile$collector$1$emit$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22824f;

    /* renamed from: g */
    int f22825g;

    /* renamed from: h */
    final /* synthetic */ FlowKt__LimitKt$collectWhile$collector$1 f22826h;

    /* renamed from: i */
    Object f22827i;

    /* renamed from: j */
    Object f22828j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$collectWhile$collector$1$emit$1(FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1, Continuation continuation) {
        super(continuation);
        this.f22826h = flowKt__LimitKt$collectWhile$collector$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22824f = obj;
        this.f22825g |= Integer.MIN_VALUE;
        return this.f22826h.mo588b(null, this);
    }
}
