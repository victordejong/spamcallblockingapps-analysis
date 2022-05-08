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
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2", m1914f = "Delay.kt", m1913l = {188}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2.class */
public final class FlowKt__DelayKt$debounce$2 extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f22517g;

    /* renamed from: h */
    private FlowCollector f22518h;

    /* renamed from: i */
    Object f22519i;

    /* renamed from: j */
    Object f22520j;

    /* renamed from: k */
    Object f22521k;

    /* renamed from: l */
    Object f22522l;

    /* renamed from: m */
    Object f22523m;

    /* renamed from: n */
    int f22524n;

    /* renamed from: o */
    final /* synthetic */ Flow f22525o;

    /* renamed from: p */
    final /* synthetic */ long f22526p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$debounce$2(Flow flow, long j, Continuation continuation) {
        super(3, continuation);
        this.f22525o = flow;
        this.f22526p = j;
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public final Object mo594a(CoroutineScope coroutineScope, Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$debounce$2) m714d(coroutineScope, (FlowCollector) obj, continuation)).invokeSuspend(Unit.f20447a);
    }

    @NotNull
    /* renamed from: d */
    public final Continuation<Unit> m714d(@NotNull CoroutineScope coroutineScope, @NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2 = new FlowKt__DelayKt$debounce$2(this.f22525o, this.f22526p, continuation);
        flowKt__DelayKt$debounce$2.f22517g = coroutineScope;
        flowKt__DelayKt$debounce$2.f22518h = flowCollector;
        return flowKt__DelayKt$debounce$2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:15|16|34|17) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x013c, code lost:
        r16 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0146, code lost:
        r0.m326c0(r16);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0181  */
    /* JADX WARN: Type inference failed for: r1v17, types: [T, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x016a -> B:29:0x0174). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
