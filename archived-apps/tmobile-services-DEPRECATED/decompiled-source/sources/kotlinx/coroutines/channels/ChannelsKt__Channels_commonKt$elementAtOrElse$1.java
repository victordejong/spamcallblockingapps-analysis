package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0087H"}, d2 = {"elementAtOrElse", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.INDEX, "", "defaultValue", "Lkotlin/Function1;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {237}, m1912m = "elementAtOrElse")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1.class */
public final class ChannelsKt__Channels_commonKt$elementAtOrElse$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21515f;

    /* renamed from: g */
    int f21516g;

    /* renamed from: h */
    Object f21517h;

    /* renamed from: i */
    Object f21518i;

    /* renamed from: j */
    Object f21519j;

    /* renamed from: k */
    Object f21520k;

    /* renamed from: l */
    Object f21521l;

    /* renamed from: m */
    Object f21522m;

    /* renamed from: n */
    int f21523n;

    /* renamed from: o */
    int f21524o;

    public ChannelsKt__Channels_commonKt$elementAtOrElse$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21515f = obj;
        this.f21516g |= Integer.MIN_VALUE;
        return ChannelsKt.m940q(null, 0, null, this);
    }
}
