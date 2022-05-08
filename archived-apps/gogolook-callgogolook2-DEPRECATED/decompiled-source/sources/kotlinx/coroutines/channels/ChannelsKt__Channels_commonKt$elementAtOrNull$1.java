package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m472f = "Channels.common.kt", m471l = {262}, m470m = "elementAtOrNull")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0007H\u0087@"}, m815d2 = {"elementAtOrNull", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ReceiveChannel;", "index", "", "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1.class */
public final class ChannelsKt__Channels_commonKt$elementAtOrNull$1 extends AbstractC15068d {
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;
    public /* synthetic */ Object result;

    public ChannelsKt__Channels_commonKt$elementAtOrNull$1(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ChannelsKt.elementAtOrNull(null, 0, this);
    }
}
