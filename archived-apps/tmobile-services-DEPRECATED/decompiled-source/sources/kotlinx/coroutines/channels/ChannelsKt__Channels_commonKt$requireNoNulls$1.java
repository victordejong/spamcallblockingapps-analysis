package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "E", "", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$requireNoNulls$1", m1914f = "Channels.common.kt", m1913l = {}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$requireNoNulls$1.class */
final class ChannelsKt__Channels_commonKt$requireNoNulls$1 extends SuspendLambda implements Function2<E, Continuation<? super E>, Object> {

    /* renamed from: g */
    private Object f22059g;

    /* renamed from: h */
    int f22060h;

    /* renamed from: i */
    final /* synthetic */ ReceiveChannel f22061i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$requireNoNulls$1(ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.f22061i = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$requireNoNulls$1 channelsKt__Channels_commonKt$requireNoNulls$1 = new ChannelsKt__Channels_commonKt$requireNoNulls$1(this.f22061i, continuation);
        channelsKt__Channels_commonKt$requireNoNulls$1.f22059g = obj;
        return channelsKt__Channels_commonKt$requireNoNulls$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.m1920d();
        if (this.f22060h == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f22059g;
            if (obj2 != null) {
                return obj2;
            }
            throw new IllegalArgumentException("null element found in " + this.f22061i + '.');
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Object obj2) {
        return ((ChannelsKt__Channels_commonKt$requireNoNulls$1) create(obj, (Continuation) obj2)).invokeSuspend(Unit.f20447a);
    }
}
