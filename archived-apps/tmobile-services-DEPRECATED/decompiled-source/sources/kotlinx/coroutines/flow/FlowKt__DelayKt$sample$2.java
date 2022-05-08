package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", m1914f = "Delay.kt", m1913l = {188}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2.class */
public final class FlowKt__DelayKt$sample$2 extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f22537g;

    /* renamed from: h */
    private FlowCollector f22538h;

    /* renamed from: i */
    Object f22539i;

    /* renamed from: j */
    Object f22540j;

    /* renamed from: k */
    Object f22541k;

    /* renamed from: l */
    Object f22542l;

    /* renamed from: m */
    Object f22543m;

    /* renamed from: n */
    Object f22544n;

    /* renamed from: o */
    int f22545o;

    /* renamed from: p */
    final /* synthetic */ Flow f22546p;

    /* renamed from: q */
    final /* synthetic */ long f22547q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$sample$2(Flow flow, long j, Continuation continuation) {
        super(3, continuation);
        this.f22546p = flow;
        this.f22547q = j;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(CoroutineScope coroutineScope, Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$sample$2) m713d(coroutineScope, (FlowCollector) obj, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m713d(@NotNull CoroutineScope coroutineScope, @NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.f22546p, this.f22547q, continuation);
        flowKt__DelayKt$sample$2.f22537g = coroutineScope;
        flowKt__DelayKt$sample$2.f22538h = flowCollector;
        return flowKt__DelayKt$sample$2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:12|(1:31)|13|14|29|15|19|(1:21)|22|(2:24|25)|26|10|(2:27|28)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0151, code lost:
        r18 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0158, code lost:
        r0.m326c0(r18);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0187  */
    /* JADX WARN: Type inference failed for: r1v18, types: [T, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x017a -> B:26:0x0180). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
