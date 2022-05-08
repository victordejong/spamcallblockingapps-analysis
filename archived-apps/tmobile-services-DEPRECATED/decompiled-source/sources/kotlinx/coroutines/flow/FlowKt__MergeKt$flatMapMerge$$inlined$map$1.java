package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$map$$inlined$unsafeTransform$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1.class */
public final class FlowKt__MergeKt$flatMapMerge$$inlined$map$1 implements Flow<Flow<? extends R>> {

    /* renamed from: a */
    final /* synthetic */ Flow f22855a;

    /* renamed from: b */
    final /* synthetic */ Function2 f22856b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MergeKt$map$$inlined$unsafeTransform$2$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2.class */
    public static final class C23162 implements FlowCollector<T> {

        /* renamed from: f */
        final /* synthetic */ FlowCollector f22857f;

        /* renamed from: g */
        final /* synthetic */ FlowKt__MergeKt$flatMapMerge$$inlined$map$1 f22858g;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\n"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "kotlinx/coroutines/flow/FlowKt__MergeKt$$special$$inlined$collect$2$1", "kotlinx/coroutines/flow/FlowKt__MergeKt$unsafeTransform$$inlined$unsafeFlow$2$lambda$1$1", "kotlinx/coroutines/flow/FlowKt__MergeKt$map$$inlined$unsafeTransform$2$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", m1914f = "Merge.kt", m1913l = {134, 134}, m1912m = "emit")
        /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1 */
        /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1.class */
        public static final class C23171 extends ContinuationImpl {

            /* renamed from: f */
            /* synthetic */ Object f22859f;

            /* renamed from: g */
            int f22860g;

            /* renamed from: h */
            Object f22861h;

            /* renamed from: i */
            Object f22862i;

            /* renamed from: j */
            Object f22863j;

            /* renamed from: k */
            Object f22864k;

            /* renamed from: l */
            Object f22865l;

            /* renamed from: m */
            Object f22866m;

            /* renamed from: n */
            Object f22867n;

            /* renamed from: o */
            Object f22868o;

            public C23171(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f22859f = obj;
                this.f22860g |= Integer.MIN_VALUE;
                return C23162.this.mo588b(null, this);
            }
        }

        public C23162(FlowCollector flowCollector, FlowKt__MergeKt$flatMapMerge$$inlined$map$1 flowKt__MergeKt$flatMapMerge$$inlined$map$1) {
            this.f22857f = flowCollector;
            this.f22858g = flowKt__MergeKt$flatMapMerge$$inlined$map$1;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0187  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        @org.jetbrains.annotations.Nullable
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo588b(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r7) {
            /*
                Method dump skipped, instructions count: 398
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1.C23162.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector flowCollector, @NotNull Continuation continuation) {
        Object d;
        Object a = this.f22855a.mo589a(new C23162(flowCollector, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return a == d ? a : Unit.f20447a;
    }
}
