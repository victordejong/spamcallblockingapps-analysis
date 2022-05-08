package kotlinx.coroutines.channels;

import androidx.core.view.PointerIconCompat;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$takeWhile$1", m472f = "Channels.common.kt", m471l = {PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, PointerIconCompat.TYPE_ZOOM_IN, PointerIconCompat.TYPE_ZOOM_OUT}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$takeWhile$1.class */
public final class ChannelsKt__Channels_commonKt$takeWhile$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super E>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15122p $predicate;
    public final /* synthetic */ ReceiveChannel $this_takeWhile;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32859p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$takeWhile$1(ReceiveChannel receiveChannel, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_takeWhile = receiveChannel;
        this.$predicate = pVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$takeWhile$1 channelsKt__Channels_commonKt$takeWhile$1 = new ChannelsKt__Channels_commonKt$takeWhile$1(this.$this_takeWhile, this.$predicate, dVar);
        channelsKt__Channels_commonKt$takeWhile$1.f32859p$ = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$takeWhile$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelsKt__Channels_commonKt$takeWhile$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0175 -> B:17:0x00ac). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$takeWhile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
