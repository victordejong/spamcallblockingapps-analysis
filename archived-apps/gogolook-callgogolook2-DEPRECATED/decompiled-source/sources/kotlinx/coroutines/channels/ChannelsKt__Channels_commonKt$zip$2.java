package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2", m472f = "Channels.common.kt", m471l = {2201, 2191, 2193}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "R", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2.class */
public final class ChannelsKt__Channels_commonKt$zip$2 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super V>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel $other;
    public final /* synthetic */ ReceiveChannel $this_zip;
    public final /* synthetic */ AbstractC15122p $transform;
    public Object L$0;
    public Object L$1;
    public Object L$10;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public Object L$9;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32861p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$zip$2(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_zip = receiveChannel;
        this.$other = receiveChannel2;
        this.$transform = pVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$zip$2 channelsKt__Channels_commonKt$zip$2 = new ChannelsKt__Channels_commonKt$zip$2(this.$this_zip, this.$other, this.$transform, dVar);
        channelsKt__Channels_commonKt$zip$2.f32861p$ = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$zip$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelsKt__Channels_commonKt$zip$2) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02d1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x0383 -> B:122:0x0388). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x02ce -> B:26:0x01a5). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
