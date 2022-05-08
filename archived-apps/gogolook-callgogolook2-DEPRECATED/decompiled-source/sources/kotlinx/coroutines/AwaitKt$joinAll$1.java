package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.AwaitKt", m472f = "Await.kt", m471l = {47}, m470m = "joinAll")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086@"}, m815d2 = {"joinAll", "", "jobs", "", "Lkotlinx/coroutines/Job;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/AwaitKt$joinAll$1.class */
public final class AwaitKt$joinAll$1 extends AbstractC15068d {
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;
    public /* synthetic */ Object result;

    public AwaitKt$joinAll$1(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AwaitKt.joinAll((Job[]) null, this);
    }
}
