package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinct$1", m472f = "Channels.common.kt", m471l = {}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0004\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", ExifInterface.LONGITUDE_EAST, "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinct$1.class */
public final class ChannelsKt__Channels_commonKt$distinct$1 extends AbstractC15078m implements AbstractC15122p<E, AbstractC15044d<? super E>, Object> {
    public int label;
    public Object p$0;

    public ChannelsKt__Channels_commonKt$distinct$1(AbstractC15044d dVar) {
        super(2, dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$distinct$1 channelsKt__Channels_commonKt$distinct$1 = new ChannelsKt__Channels_commonKt$distinct$1(dVar);
        channelsKt__Channels_commonKt$distinct$1.p$0 = obj;
        return channelsKt__Channels_commonKt$distinct$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, Object obj2) {
        return ((ChannelsKt__Channels_commonKt$distinct$1) create(obj, (AbstractC15044d) obj2)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        C15064c.m478a();
        if (this.label == 0) {
            C14982l.m653a(obj);
            return this.p$0;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
