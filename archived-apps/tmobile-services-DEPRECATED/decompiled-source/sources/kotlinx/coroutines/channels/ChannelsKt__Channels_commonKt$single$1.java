package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0087@"}, d2 = {"single", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {595, 598}, m1912m = "single")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1.class */
public final class ChannelsKt__Channels_commonKt$single$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22062f;

    /* renamed from: g */
    int f22063g;

    /* renamed from: h */
    Object f22064h;

    /* renamed from: i */
    Object f22065i;

    /* renamed from: j */
    Object f22066j;

    /* renamed from: k */
    Object f22067k;

    /* renamed from: l */
    Object f22068l;

    /* renamed from: m */
    Object f22069m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$single$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22062f = obj;
        this.f22063g |= Integer.MIN_VALUE;
        return ChannelsKt.m949l0(null, this);
    }
}
