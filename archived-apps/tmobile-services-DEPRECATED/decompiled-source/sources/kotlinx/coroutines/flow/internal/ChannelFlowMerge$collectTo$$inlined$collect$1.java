package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.sync.Semaphore;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006��"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1.class */
public final class ChannelFlowMerge$collectTo$$inlined$collect$1 implements FlowCollector<Flow<? extends T>> {

    /* renamed from: f */
    final /* synthetic */ Job f23665f;

    /* renamed from: g */
    final /* synthetic */ Semaphore f23666g;

    /* renamed from: h */
    final /* synthetic */ ProducerScope f23667h;

    /* renamed from: i */
    final /* synthetic */ SendingCollector f23668i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\u0007"}, d2 = {"emit", "", "T", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1", m1914f = "Merge.kt", m1913l = {134}, m1912m = "emit")
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowMerge$collectTo$$inlined$collect$1$1.class */
    public static final class C24261 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23669f;

        /* renamed from: g */
        int f23670g;

        /* renamed from: i */
        Object f23672i;

        /* renamed from: j */
        Object f23673j;

        /* renamed from: k */
        Object f23674k;

        /* renamed from: l */
        Object f23675l;

        public C24261(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23669f = obj;
            this.f23670g |= Integer.MIN_VALUE;
            return ChannelFlowMerge$collectTo$$inlined$collect$1.this.mo588b(null, this);
        }
    }

    public ChannelFlowMerge$collectTo$$inlined$collect$1(Job job, Semaphore semaphore, ProducerScope producerScope, SendingCollector sendingCollector) {
        this.f23665f = job;
        this.f23666g = semaphore;
        this.f23667h = producerScope;
        this.f23668i = sendingCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    @org.jetbrains.annotations.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo588b(java.lang.Object r10, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$$inlined$collect$1.mo588b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
