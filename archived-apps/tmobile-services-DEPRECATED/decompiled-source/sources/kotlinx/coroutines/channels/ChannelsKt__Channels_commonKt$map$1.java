package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "E", "R", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1", m1914f = "Channels.common.kt", m1913l = {2201, 1400, 1400}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1.class */
final class ChannelsKt__Channels_commonKt$map$1 extends SuspendLambda implements Function2<ProducerScope<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f21854g;

    /* renamed from: h */
    Object f21855h;

    /* renamed from: i */
    Object f21856i;

    /* renamed from: j */
    Object f21857j;

    /* renamed from: k */
    Object f21858k;

    /* renamed from: l */
    Object f21859l;

    /* renamed from: m */
    Object f21860m;

    /* renamed from: n */
    Object f21861n;

    /* renamed from: o */
    Object f21862o;

    /* renamed from: p */
    Object f21863p;

    /* renamed from: q */
    Object f21864q;

    /* renamed from: r */
    int f21865r;

    /* renamed from: s */
    final /* synthetic */ ReceiveChannel f21866s;

    /* renamed from: t */
    final /* synthetic */ Function2 f21867t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$map$1(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f21866s = receiveChannel;
        this.f21867t = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$map$1 channelsKt__Channels_commonKt$map$1 = new ChannelsKt__Channels_commonKt$map$1(this.f21866s, this.f21867t, continuation);
        channelsKt__Channels_commonKt$map$1.f21854g = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$map$1;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01fc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0340 -> B:116:0x0350). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__Channels_commonKt$map$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
