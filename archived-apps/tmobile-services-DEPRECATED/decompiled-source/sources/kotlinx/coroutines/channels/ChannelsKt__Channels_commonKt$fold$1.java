package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00032'\u0010\u0006\u001a#\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00030\fH\u0087H"}, d2 = {"fold", "", "E", "R", "Lkotlinx/coroutines/channels/ReceiveChannel;", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "acc", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2846}, m1912m = "fold")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1.class */
public final class ChannelsKt__Channels_commonKt$fold$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21708f;

    /* renamed from: g */
    int f21709g;

    /* renamed from: h */
    Object f21710h;

    /* renamed from: i */
    Object f21711i;

    /* renamed from: j */
    Object f21712j;

    /* renamed from: k */
    Object f21713k;

    /* renamed from: l */
    Object f21714l;

    /* renamed from: m */
    Object f21715m;

    /* renamed from: n */
    Object f21716n;

    /* renamed from: o */
    Object f21717o;

    /* renamed from: p */
    Object f21718p;

    public ChannelsKt__Channels_commonKt$fold$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21708f = obj;
        this.f21709g |= Integer.MIN_VALUE;
        return ChannelsKt.m992G(null, null, null, this);
    }
}
