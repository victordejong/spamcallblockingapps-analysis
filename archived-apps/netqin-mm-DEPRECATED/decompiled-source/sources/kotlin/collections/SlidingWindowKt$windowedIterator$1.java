package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import p573f.C9946p;
import p573f.p575b0.AbstractC9897c;
import p573f.p579t.AbstractC9993a;
import p573f.p579t.p585e.p586a.AbstractC10009c;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
@AbstractC10009c(m1683c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", m1682f = "SlidingWindow.kt", m1681l = {34, 40, 49, 55, 58}, m1680m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/SlidingWindowKt$windowedIterator$1.class */
public final class SlidingWindowKt$windowedIterator$1 extends RestrictedSuspendLambda implements AbstractC10035p<AbstractC9897c<? super List<? extends T>>, AbstractC9993a<? super C9946p>, Object> {
    public final /* synthetic */ Iterator $iterator;
    public final /* synthetic */ boolean $partialWindows;
    public final /* synthetic */ boolean $reuseBuffer;
    public final /* synthetic */ int $size;
    public final /* synthetic */ int $step;
    public int I$0;
    public int I$1;
    public int I$2;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;

    /* renamed from: p$ */
    public AbstractC9897c f38749p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlidingWindowKt$windowedIterator$1(int i, int i2, Iterator it, boolean z, boolean z2, AbstractC9993a aVar) {
        super(2, aVar);
        this.$size = i;
        this.$step = i2;
        this.$iterator = it;
        this.$reuseBuffer = z;
        this.$partialWindows = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final AbstractC9993a<C9946p> create(Object obj, AbstractC9993a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, aVar);
        slidingWindowKt$windowedIterator$1.f38749p$ = (AbstractC9897c) obj;
        return slidingWindowKt$windowedIterator$1;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public final Object invoke(Object obj, AbstractC9993a<? super C9946p> aVar) {
        return ((SlidingWindowKt$windowedIterator$1) create(obj, aVar)).invokeSuspend(C9946p.f37137a);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x035e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0197 -> B:36:0x019c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x02c8 -> B:67:0x02cd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0345 -> B:81:0x034a). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.SlidingWindowKt$windowedIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
