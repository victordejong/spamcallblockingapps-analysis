package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0087@"}, d2 = {"toChannel", "", "E", "C", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2597, 1172}, m1912m = "toChannel")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1.class */
public final class ChannelsKt__Channels_commonKt$toChannel$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22135f;

    /* renamed from: g */
    int f22136g;

    /* renamed from: h */
    Object f22137h;

    /* renamed from: i */
    Object f22138i;

    /* renamed from: j */
    Object f22139j;

    /* renamed from: k */
    Object f22140k;

    /* renamed from: l */
    Object f22141l;

    /* renamed from: m */
    Object f22142m;

    /* renamed from: n */
    Object f22143n;

    /* renamed from: o */
    Object f22144o;

    /* renamed from: p */
    Object f22145p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$toChannel$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22135f = obj;
        this.f22136g |= Integer.MIN_VALUE;
        return ChannelsKt.m937r0(null, null, this);
    }
}
