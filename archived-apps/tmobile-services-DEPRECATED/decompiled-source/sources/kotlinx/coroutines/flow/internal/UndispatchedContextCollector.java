package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u001d\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR5\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\r8\u0002@\u0002X\u0082\u0004ø\u0001��¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;", "T", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "countOrElement", "Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "emitRef", "Lkotlin/jvm/functions/Function2;", "downstream", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/UndispatchedContextCollector.class */
public final class UndispatchedContextCollector<T> implements FlowCollector<T> {

    /* renamed from: f */
    private final Object f23879f;

    /* renamed from: g */
    private final Function2<T, Continuation<? super Unit>, Object> f23880g;

    /* renamed from: h */
    private final CoroutineContext f23881h;

    public UndispatchedContextCollector(@NotNull FlowCollector<? super T> flowCollector, @NotNull CoroutineContext coroutineContext) {
        this.f23881h = coroutineContext;
        this.f23879f = ThreadContextKt.m428b(coroutineContext);
        this.f23880g = new UndispatchedContextCollector$emitRef$1(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    @Nullable
    /* renamed from: b */
    public Object mo588b(T t, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object b = ChannelFlowKt.m624b(this.f23881h, this.f23879f, this.f23880g, t, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return b == d ? b : Unit.f20447a;
    }
}
