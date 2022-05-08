package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00030\u00042F\u0010\u0005\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000bH\u0086@"}, d2 = {"reduce", "", "S", "T", "Lkotlinx/coroutines/flow/Flow;", "operation", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "accumulator", FirebaseAnalytics.Param.VALUE, "Lkotlin/coroutines/Continuation;", "continuation"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m1914f = "Reduce.kt", m1913l = {141}, m1912m = "reduce")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1.class */
public final class FlowKt__ReduceKt$reduce$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f23170f;

    /* renamed from: g */
    int f23171g;

    /* renamed from: h */
    Object f23172h;

    /* renamed from: i */
    Object f23173i;

    /* renamed from: j */
    Object f23174j;

    /* renamed from: k */
    Object f23175k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$reduce$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f23170f = obj;
        this.f23171g |= Integer.MIN_VALUE;
        return FlowKt.m729p(null, null, this);
    }
}
