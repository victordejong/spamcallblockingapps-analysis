package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007H\u0080@"}, d2 = {"catchImpl", "", "T", "Lkotlinx/coroutines/flow/Flow;", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", m1914f = "Errors.kt", m1913l = {230}, m1912m = "catchImpl")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$1.class */
public final class FlowKt__ErrorsKt$catchImpl$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22726f;

    /* renamed from: g */
    int f22727g;

    /* renamed from: h */
    Object f22728h;

    /* renamed from: i */
    Object f22729i;

    /* renamed from: j */
    Object f22730j;

    /* renamed from: k */
    Object f22731k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ErrorsKt$catchImpl$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22726f = obj;
        this.f22727g |= Integer.MIN_VALUE;
        return FlowKt.m743b(null, null, this);
    }
}
