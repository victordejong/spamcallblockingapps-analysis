package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "E", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$sendBlocking$1", m1914f = "Channels.kt", m1913l = {25}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__ChannelsKt$sendBlocking$1.class */
final class ChannelsKt__ChannelsKt$sendBlocking$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f21338g;

    /* renamed from: h */
    Object f21339h;

    /* renamed from: i */
    int f21340i;

    /* renamed from: j */
    final /* synthetic */ SendChannel f21341j;

    /* renamed from: k */
    final /* synthetic */ Object f21342k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__ChannelsKt$sendBlocking$1(SendChannel sendChannel, Object obj, Continuation continuation) {
        super(2, continuation);
        this.f21341j = sendChannel;
        this.f21342k = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__ChannelsKt$sendBlocking$1 channelsKt__ChannelsKt$sendBlocking$1 = new ChannelsKt__ChannelsKt$sendBlocking$1(this.f21341j, this.f21342k, continuation);
        channelsKt__ChannelsKt$sendBlocking$1.f21338g = (CoroutineScope) obj;
        return channelsKt__ChannelsKt$sendBlocking$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f21340i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            CoroutineScope coroutineScope = this.f21338g;
            SendChannel sendChannel = this.f21341j;
            Object obj2 = this.f21342k;
            this.f21339h = coroutineScope;
            this.f21340i = 1;
            if (sendChannel.mo805A(obj2, this) == d) {
                return d;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.f21339h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__ChannelsKt$sendBlocking$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
