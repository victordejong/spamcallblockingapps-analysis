package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u0004\u001a\u0016\u0012\u0006\b��\u0012\u0002H\u00020\u0005j\n\u0012\u0006\b��\u0012\u0002H\u0002`\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\bH\u0087@"}, d2 = {"maxWith", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {1917, 1919}, m1912m = "maxWith")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1.class */
public final class ChannelsKt__Channels_commonKt$maxWith$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21986f;

    /* renamed from: g */
    int f21987g;

    /* renamed from: h */
    Object f21988h;

    /* renamed from: i */
    Object f21989i;

    /* renamed from: j */
    Object f21990j;

    /* renamed from: k */
    Object f21991k;

    /* renamed from: l */
    Object f21992l;

    /* renamed from: m */
    Object f21993m;

    /* renamed from: n */
    Object f21994n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$maxWith$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21986f = obj;
        this.f21987g |= Integer.MIN_VALUE;
        return ChannelsKt.m965d0(null, null, this);
    }
}
