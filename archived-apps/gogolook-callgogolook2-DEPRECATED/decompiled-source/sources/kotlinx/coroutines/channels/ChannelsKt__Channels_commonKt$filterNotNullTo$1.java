package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m472f = "Channels.common.kt", m471l = {2670}, m470m = "filterNotNullTo")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0001\"\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b��\u0012\u0002H\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0087@"}, m815d2 = {"filterNotNullTo", "", ExifInterface.LONGITUDE_EAST, "C", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", "destination", "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1.class */
public final class ChannelsKt__Channels_commonKt$filterNotNullTo$1 extends AbstractC15068d {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public int label;
    public /* synthetic */ Object result;

    public ChannelsKt__Channels_commonKt$filterNotNullTo$1(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ChannelsKt.filterNotNullTo((ReceiveChannel) null, (Collection) null, this);
    }
}
