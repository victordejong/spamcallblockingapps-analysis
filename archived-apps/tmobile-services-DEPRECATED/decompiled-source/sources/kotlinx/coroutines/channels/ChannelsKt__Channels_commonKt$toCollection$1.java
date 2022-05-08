package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b��\u0012\u0002H\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0087@"}, d2 = {"toCollection", "", "E", "C", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2607}, m1912m = "toCollection")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1.class */
public final class ChannelsKt__Channels_commonKt$toCollection$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22146f;

    /* renamed from: g */
    int f22147g;

    /* renamed from: h */
    Object f22148h;

    /* renamed from: i */
    Object f22149i;

    /* renamed from: j */
    Object f22150j;

    /* renamed from: k */
    Object f22151k;

    /* renamed from: l */
    Object f22152l;

    /* renamed from: m */
    Object f22153m;

    /* renamed from: n */
    Object f22154n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$toCollection$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22146f = obj;
        this.f22147g |= Integer.MIN_VALUE;
        return ChannelsKt.m935s0(null, null, this);
    }
}
