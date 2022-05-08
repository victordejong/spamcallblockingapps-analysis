package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0082@"}, d2 = {"emitAllImpl", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "channel", "Lkotlinx/coroutines/channels/ReceiveChannel;", "consume", "", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", m1914f = "Channels.kt", m1913l = {47, 58}, m1912m = "emitAllImpl$FlowKt__ChannelsKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1.class */
public final class FlowKt__ChannelsKt$emitAllImpl$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22433f;

    /* renamed from: g */
    int f22434g;

    /* renamed from: h */
    Object f22435h;

    /* renamed from: i */
    Object f22436i;

    /* renamed from: j */
    Object f22437j;

    /* renamed from: k */
    Object f22438k;

    /* renamed from: l */
    boolean f22439l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ChannelsKt$emitAllImpl$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22433f = obj;
        this.f22434g |= Integer.MIN_VALUE;
        return FlowKt__ChannelsKt.m724b(null, null, false, this);
    }
}
