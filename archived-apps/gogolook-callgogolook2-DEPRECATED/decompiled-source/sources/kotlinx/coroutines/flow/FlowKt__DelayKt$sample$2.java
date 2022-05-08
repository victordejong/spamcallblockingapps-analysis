package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15123q;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", m472f = "Delay.kt", m471l = {137}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2.class */
public final class FlowKt__DelayKt$sample$2 extends AbstractC15078m implements AbstractC15123q<CoroutineScope, FlowCollector<? super T>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ long $periodMillis;
    public final /* synthetic */ Flow $this_sample;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32868p$;
    public FlowCollector p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$sample$2(Flow flow, long j, AbstractC15044d dVar) {
        super(3, dVar);
        this.$this_sample = flow;
        this.$periodMillis = j;
    }

    public final AbstractC15044d<C14989s> create(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.$this_sample, this.$periodMillis, dVar);
        flowKt__DelayKt$sample$2.f32868p$ = coroutineScope;
        flowKt__DelayKt$sample$2.p$0 = flowCollector;
        return flowKt__DelayKt$sample$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public final Object invoke(CoroutineScope coroutineScope, Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__DelayKt$sample$2) create(coroutineScope, (FlowCollector) obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:12|(1:31)|13|14|29|15|19|(1:21)|22|(2:24|25)|26|10|(2:27|28)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0144, code lost:
        r17 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x014b, code lost:
        r0.handleBuilderException(r17);
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0177  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x016c -> B:26:0x0171). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
