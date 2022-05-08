package kotlinx.coroutines.channels;

import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.TickerChannelsKt", m472f = "TickerChannels.kt", m471l = {84, 88, 94, 96}, m470m = "fixedPeriodTicker")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0082@"}, m815d2 = {"fixedPeriodTicker", "", "delayMillis", "", "initialDelayMillis", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/SendChannel;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1.class */
public final class TickerChannelsKt$fixedPeriodTicker$1 extends AbstractC15068d {
    public long J$0;
    public long J$1;
    public long J$2;
    public long J$3;
    public long J$4;
    public long J$5;
    public long J$6;
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;

    public TickerChannelsKt$fixedPeriodTicker$1(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TickerChannelsKt.fixedPeriodTicker(0L, 0L, null, this);
    }
}
