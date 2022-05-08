package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0087H"}, d2 = {"consumeEach", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "action", "Lkotlin/Function1;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {180}, m1912m = "consumeEach")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3.class */
public final class ChannelsKt__Channels_commonKt$consumeEach$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21440f;

    /* renamed from: g */
    int f21441g;

    /* renamed from: h */
    Object f21442h;

    /* renamed from: i */
    Object f21443i;

    /* renamed from: j */
    Object f21444j;

    /* renamed from: k */
    Object f21445k;

    /* renamed from: l */
    Object f21446l;

    /* renamed from: m */
    Object f21447m;

    public ChannelsKt__Channels_commonKt$consumeEach$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21440f = obj;
        this.f21441g |= Integer.MIN_VALUE;
        return ChannelsKt.m950l(null, null, this);
    }
}
