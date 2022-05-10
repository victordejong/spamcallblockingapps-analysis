package kotlin.sequences;

import java.util.Iterator;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import p573f.C9927e;
import p573f.C9946p;
import p573f.p575b0.AbstractC9896b;
import p573f.p575b0.AbstractC9897c;
import p573f.p579t.AbstractC9993a;
import p573f.p579t.p584d.C10006b;
import p573f.p579t.p585e.p586a.AbstractC10009c;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
@AbstractC10009c(m1683c = "kotlin.sequences.SequencesKt__SequencesKt$ifEmpty$1", m1682f = "Sequences.kt", m1681l = {67, 69}, m1680m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$ifEmpty$1.class */
public final class SequencesKt__SequencesKt$ifEmpty$1 extends RestrictedSuspendLambda implements AbstractC10035p<AbstractC9897c<? super T>, AbstractC9993a<? super C9946p>, Object> {
    public final /* synthetic */ AbstractC10020a $defaultValue;
    public final /* synthetic */ AbstractC9896b $this_ifEmpty;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public AbstractC9897c f38753p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt__SequencesKt$ifEmpty$1(AbstractC9896b bVar, AbstractC10020a aVar, AbstractC9993a aVar2) {
        super(2, aVar2);
        this.$this_ifEmpty = bVar;
        this.$defaultValue = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final AbstractC9993a<C9946p> create(Object obj, AbstractC9993a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        SequencesKt__SequencesKt$ifEmpty$1 sequencesKt__SequencesKt$ifEmpty$1 = new SequencesKt__SequencesKt$ifEmpty$1(this.$this_ifEmpty, this.$defaultValue, aVar);
        sequencesKt__SequencesKt$ifEmpty$1.f38753p$ = (AbstractC9897c) obj;
        return sequencesKt__SequencesKt$ifEmpty$1;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public final Object invoke(Object obj, AbstractC9993a<? super C9946p> aVar) {
        return ((SequencesKt__SequencesKt$ifEmpty$1) create(obj, aVar)).invokeSuspend(C9946p.f37137a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a = C10006b.m1684a();
        int i = this.label;
        if (i == 0) {
            C9927e.m1779a(obj);
            AbstractC9897c cVar = this.f38753p$;
            Iterator it = this.$this_ifEmpty.iterator();
            if (it.hasNext()) {
                this.L$0 = cVar;
                this.L$1 = it;
                this.label = 1;
                if (cVar.m1813a(it, (AbstractC9993a<? super C9946p>) this) == a) {
                    return a;
                }
            } else {
                this.L$0 = cVar;
                this.L$1 = it;
                this.label = 2;
                if (cVar.m1815a((AbstractC9896b) this.$defaultValue.invoke(), (AbstractC9993a<? super C9946p>) this) == a) {
                    return a;
                }
            }
        } else if (i == 1 || i == 2) {
            Iterator it2 = (Iterator) this.L$1;
            AbstractC9897c cVar2 = (AbstractC9897c) this.L$0;
            C9927e.m1779a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C9946p.f37137a;
    }
}
