package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m472f = "Channels.common.kt", m471l = {3136, 1488}, m470m = "mapIndexedNotNullTo")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0001\"\u000e\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00042)\u0010\b\u001a%\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000fH\u0087H"}, m815d2 = {"mapIndexedNotNullTo", "", ExifInterface.LONGITUDE_EAST, "R", "C", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "destination", "transform", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "index", "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3.class */
public final class ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3 extends AbstractC15068d {
    public int I$0;
    public Object L$0;
    public Object L$1;
    public Object L$10;
    public Object L$11;
    public Object L$12;
    public Object L$13;
    public Object L$14;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public int label;
    public /* synthetic */ Object result;

    public ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ChannelsKt.mapIndexedNotNullTo((ReceiveChannel) null, (SendChannel) null, (AbstractC15122p) null, this);
    }
}
