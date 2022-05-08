package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010$\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00062\u0018\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\t0\bH\u0087H"}, d2 = {"associateBy", "", "E", "K", "Lkotlinx/coroutines/channels/ReceiveChannel;", "keySelector", "Lkotlin/Function1;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2540}, m1912m = "associateBy")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1.class */
public final class ChannelsKt__Channels_commonKt$associateBy$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21378f;

    /* renamed from: g */
    int f21379g;

    /* renamed from: h */
    Object f21380h;

    /* renamed from: i */
    Object f21381i;

    /* renamed from: j */
    Object f21382j;

    /* renamed from: k */
    Object f21383k;

    /* renamed from: l */
    Object f21384l;

    /* renamed from: m */
    Object f21385m;

    /* renamed from: n */
    Object f21386n;

    /* renamed from: o */
    Object f21387o;

    /* renamed from: p */
    Object f21388p;

    public ChannelsKt__Channels_commonKt$associateBy$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21378f = obj;
        this.f21379g |= Integer.MIN_VALUE;
        return ChannelsKt.m964e(null, null, this);
    }
}
