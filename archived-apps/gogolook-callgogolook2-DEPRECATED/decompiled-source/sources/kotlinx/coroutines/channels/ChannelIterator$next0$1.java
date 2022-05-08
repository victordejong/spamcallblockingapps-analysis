package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ChannelIterator;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelIterator$DefaultImpls", m472f = "Channel.kt", m471l = {463}, m470m = "next")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0097@"}, m815d2 = {"next0", "", ExifInterface.LONGITUDE_EAST, "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator$next0$1.class */
public final class ChannelIterator$next0$1 extends AbstractC15068d {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ChannelIterator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelIterator$next0$1(ChannelIterator channelIterator, AbstractC15044d dVar) {
        super(dVar);
        this.this$0 = channelIterator;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ChannelIterator.DefaultImpls.next(null, this);
    }
}
