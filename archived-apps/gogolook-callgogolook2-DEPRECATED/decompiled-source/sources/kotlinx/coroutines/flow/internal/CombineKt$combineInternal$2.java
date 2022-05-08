package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", m472f = "Combine.kt", m471l = {143}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2.class */
public final class CombineKt$combineInternal$2 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15107a $arrayFactory;
    public final /* synthetic */ Flow[] $flows;
    public final /* synthetic */ FlowCollector $this_combineInternal;
    public final /* synthetic */ AbstractC15123q $transform;
    public int I$0;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32922p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(FlowCollector flowCollector, Flow[] flowArr, AbstractC15107a aVar, AbstractC15123q qVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_combineInternal = flowCollector;
        this.$flows = flowArr;
        this.$arrayFactory = aVar;
        this.$transform = qVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$this_combineInternal, this.$flows, this.$arrayFactory, this.$transform, dVar);
        combineKt$combineInternal$2.f32922p$ = (CoroutineScope) obj;
        return combineKt$combineInternal$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((CombineKt$combineInternal$2) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f6 A[SYNTHETIC] */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
