package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1", m472f = "Channels.common.kt", m471l = {2201, 1400, 1400}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1.class */
public final class ChannelsKt__Channels_commonKt$map$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel $this_map;
    public final /* synthetic */ AbstractC15122p $transform;
    public Object L$0;
    public Object L$1;
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
    public ProducerScope f32855p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$map$1(ReceiveChannel receiveChannel, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_map = receiveChannel;
        this.$transform = pVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$map$1 channelsKt__Channels_commonKt$map$1 = new ChannelsKt__Channels_commonKt$map$1(this.$this_map, this.$transform, dVar);
        channelsKt__Channels_commonKt$map$1.f32855p$ = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$map$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelsKt__Channels_commonKt$map$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x021a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x033e -> B:112:0x0356). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
