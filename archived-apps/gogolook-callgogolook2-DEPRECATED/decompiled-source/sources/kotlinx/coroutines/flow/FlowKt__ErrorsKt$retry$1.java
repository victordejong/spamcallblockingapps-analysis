package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$1", m472f = "Errors.kt", m471l = {}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$1.class */
public final class FlowKt__ErrorsKt$retry$1 extends AbstractC15078m implements AbstractC15122p<Throwable, AbstractC15044d<? super Boolean>, Object> {
    public int label;
    public Throwable p$0;

    public FlowKt__ErrorsKt$retry$1(AbstractC15044d dVar) {
        super(2, dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__ErrorsKt$retry$1 flowKt__ErrorsKt$retry$1 = new FlowKt__ErrorsKt$retry$1(dVar);
        flowKt__ErrorsKt$retry$1.p$0 = (Throwable) obj;
        return flowKt__ErrorsKt$retry$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Throwable th, AbstractC15044d<? super Boolean> dVar) {
        return ((FlowKt__ErrorsKt$retry$1) create(th, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        C15064c.m478a();
        if (this.label == 0) {
            C14982l.m653a(obj);
            return C15066b.m474a(true);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
