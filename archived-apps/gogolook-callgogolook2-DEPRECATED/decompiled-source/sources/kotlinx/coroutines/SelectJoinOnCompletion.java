package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.selects.SelectInstance;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15118l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B<\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\u001c\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bø\u0001��¢\u0006\u0002\u0010\u000bJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016R)\u0010\u0007\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\bX\u0082\u0004ø\u0001��¢\u0006\u0004\n\u0002\u0010\fR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, m815d2 = {"Lkotlinx/coroutines/SelectJoinOnCompletion;", "R", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/JobSupport;", "job", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "Lkotlin/jvm/functions/Function1;", "invoke", "", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/SelectJoinOnCompletion.class */
public final class SelectJoinOnCompletion<R> extends JobNode<JobSupport> {
    public final AbstractC15118l<AbstractC15044d<? super R>, Object> block;
    public final SelectInstance<R> select;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectJoinOnCompletion(JobSupport jobSupport, SelectInstance<? super R> selectInstance, AbstractC15118l<? super AbstractC15044d<? super R>, ? extends Object> lVar) {
        super(jobSupport);
        this.select = selectInstance;
        this.block = lVar;
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
        invoke2(th);
        return C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        if (this.select.trySelect()) {
            CancellableKt.startCoroutineCancellable(this.block, this.select.getCompletion());
        }
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return "SelectJoinOnCompletion[" + this.select + ']';
    }
}
