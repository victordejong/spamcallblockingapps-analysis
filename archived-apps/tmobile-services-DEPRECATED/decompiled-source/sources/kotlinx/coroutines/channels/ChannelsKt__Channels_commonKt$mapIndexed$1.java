package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "E", "R", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1", m1914f = "Channels.common.kt", m1913l = {1423, 1424, 1424}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1.class */
final class ChannelsKt__Channels_commonKt$mapIndexed$1 extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f21868g;

    /* renamed from: h */
    Object f21869h;

    /* renamed from: i */
    Object f21870i;

    /* renamed from: j */
    Object f21871j;

    /* renamed from: k */
    Object f21872k;

    /* renamed from: l */
    int f21873l;

    /* renamed from: m */
    int f21874m;

    /* renamed from: n */
    final /* synthetic */ ReceiveChannel f21875n;

    /* renamed from: o */
    final /* synthetic */ Function3 f21876o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$mapIndexed$1(ReceiveChannel receiveChannel, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.f21875n = receiveChannel;
        this.f21876o = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$mapIndexed$1 channelsKt__Channels_commonKt$mapIndexed$1 = new ChannelsKt__Channels_commonKt$mapIndexed$1(this.f21875n, this.f21876o, continuation);
        channelsKt__Channels_commonKt$mapIndexed$1.f21868g = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$mapIndexed$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0195 -> B:16:0x00ba). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__Channels_commonKt$mapIndexed$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
