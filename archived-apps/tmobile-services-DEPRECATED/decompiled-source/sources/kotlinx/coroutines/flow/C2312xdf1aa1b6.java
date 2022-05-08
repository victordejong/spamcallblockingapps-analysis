package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006��"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1.class */
public final class C2312xdf1aa1b6 implements FlowCollector<T> {

    /* renamed from: f */
    final /* synthetic */ FlowKt__LimitKt$transformWhile$1 f22809f;

    /* renamed from: g */
    final /* synthetic */ FlowCollector f22810g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\u0007"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1$emit$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1", m1914f = "Limit.kt", m1913l = {144}, m1912m = "emit")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1.class */
    public static final class C23131 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22811f;

        /* renamed from: g */
        int f22812g;

        /* renamed from: h */
        Object f22813h;

        /* renamed from: i */
        Object f22814i;

        /* renamed from: k */
        Object f22816k;

        /* renamed from: l */
        Object f22817l;

        public C23131(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22811f = obj;
            this.f22812g |= Integer.MIN_VALUE;
            return C2312xdf1aa1b6.this.mo588b(null, this);
        }
    }

    public C2312xdf1aa1b6(FlowKt__LimitKt$transformWhile$1 flowKt__LimitKt$transformWhile$1, FlowCollector flowCollector) {
        this.f22809f = flowKt__LimitKt$transformWhile$1;
        this.f22810g = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d3  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo588b(java.lang.Object r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C2312xdf1aa1b6.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
