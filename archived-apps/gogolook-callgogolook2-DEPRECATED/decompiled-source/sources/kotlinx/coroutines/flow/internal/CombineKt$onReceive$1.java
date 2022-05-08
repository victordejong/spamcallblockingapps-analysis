package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15148j;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.internal.CombineKt$onReceive$1", m472f = "Combine.kt", m471l = {89}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$onReceive$1.class */
public final class CombineKt$onReceive$1 extends AbstractC15078m implements AbstractC15122p<Object, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15107a $onClosed;
    public final /* synthetic */ AbstractC15122p $onReceive;
    public Object L$0;
    public int label;
    public Object p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$onReceive$1(AbstractC15107a aVar, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$onClosed = aVar;
        this.$onReceive = pVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        CombineKt$onReceive$1 combineKt$onReceive$1 = new CombineKt$onReceive$1(this.$onClosed, this.$onReceive, dVar);
        combineKt$onReceive$1.p$0 = obj;
        return combineKt$onReceive$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((CombineKt$onReceive$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            Object obj2 = this.p$0;
            if (obj2 == null) {
                this.$onClosed.invoke();
            } else {
                AbstractC15122p pVar = this.$onReceive;
                this.L$0 = obj2;
                this.label = 1;
                if (pVar.invoke(obj2, this) == a) {
                    return a;
                }
            }
        } else if (i == 1) {
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        Object obj2 = this.p$0;
        if (obj2 == null) {
            this.$onClosed.invoke();
        } else {
            AbstractC15122p pVar = this.$onReceive;
            C15148j.m388c(0);
            pVar.invoke(obj2, this);
            C15148j.m388c(2);
            C15148j.m388c(1);
        }
        return C14989s.f33022a;
    }
}
