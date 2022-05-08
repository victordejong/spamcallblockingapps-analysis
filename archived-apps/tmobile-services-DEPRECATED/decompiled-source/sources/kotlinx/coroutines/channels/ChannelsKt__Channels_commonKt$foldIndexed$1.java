package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00032<\u0010\u0006\u001a8\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00030\u000eH\u0087H"}, d2 = {"foldIndexed", "", "E", "R", "Lkotlinx/coroutines/channels/ReceiveChannel;", "initial", "operation", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.INDEX, "acc", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2856}, m1912m = "foldIndexed")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1.class */
public final class ChannelsKt__Channels_commonKt$foldIndexed$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21719f;

    /* renamed from: g */
    int f21720g;

    /* renamed from: h */
    Object f21721h;

    /* renamed from: i */
    Object f21722i;

    /* renamed from: j */
    Object f21723j;

    /* renamed from: k */
    Object f21724k;

    /* renamed from: l */
    Object f21725l;

    /* renamed from: m */
    Object f21726m;

    /* renamed from: n */
    Object f21727n;

    /* renamed from: o */
    Object f21728o;

    /* renamed from: p */
    Object f21729p;

    /* renamed from: q */
    Object f21730q;

    public ChannelsKt__Channels_commonKt$foldIndexed$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21719f = obj;
        this.f21720g |= Integer.MIN_VALUE;
        return ChannelsKt.m991H(null, null, null, this);
    }
}
