package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$3"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3$lambda$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3$lambda$1.class */
public final class C2296x4264af2b implements FlowCollector<T> {

    /* renamed from: f */
    final /* synthetic */ FlowCollector f22619f;

    /* renamed from: g */
    final /* synthetic */ Ref.ObjectRef f22620g;

    /* renamed from: h */
    final /* synthetic */ FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3 f22621h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\b"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__DistinctKt$$special$$inlined$collect$3$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3$lambda$1", m1914f = "Distinct.kt", m1913l = {137}, m1912m = "emit")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3$lambda$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3$lambda$1$1.class */
    public static final class C22971 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22622f;

        /* renamed from: g */
        int f22623g;

        /* renamed from: h */
        Object f22624h;

        /* renamed from: i */
        Object f22625i;

        /* renamed from: j */
        Object f22626j;

        /* renamed from: k */
        Object f22627k;

        /* renamed from: l */
        Object f22628l;

        public C22971(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22622f = obj;
            this.f22623g |= Integer.MIN_VALUE;
            return C2296x4264af2b.this.mo588b(null, this);
        }
    }

    public C2296x4264af2b(FlowCollector flowCollector, Ref.ObjectRef objectRef, FlowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3 flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3) {
        this.f22619f = flowCollector;
        this.f22620g = objectRef;
        this.f22621h = flowKt__DistinctKt$distinctUntilChangedBy$$inlined$unsafeFlow$3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // kotlinx.coroutines.flow.FlowCollector
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo588b(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C2296x4264af2b.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
