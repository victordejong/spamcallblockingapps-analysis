package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectInstance;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u000f\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u000f\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\r\u0010\u0017\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0018JH\u0010\u0019\u001a\u00020\u001a\"\u0004\b\u0001\u0010\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001d2\"\u0010\u001e\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001b0 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001fH\u0016ø\u0001��¢\u0006\u0002\u0010\"R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, m815d2 = {"Lkotlinx/coroutines/CompletableDeferredImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableDeferred;", "Lkotlinx/coroutines/selects/SelectClause1;", "parent", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "onAwait", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "onCancelComplete", "", "getOnCancelComplete$kotlinx_coroutines_core", "()Z", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "complete", C13032a.f29462d, "(Ljava/lang/Object;)Z", "completeExceptionally", "exception", "", "getCompleted", "()Ljava/lang/Object;", "registerSelectClause1", "", "R", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableDeferredImpl.class */
public final class CompletableDeferredImpl<T> extends JobSupport implements CompletableDeferred<T>, SelectClause1<T> {
    public CompletableDeferredImpl(Job job) {
        super(true);
        initParentJobInternal$kotlinx_coroutines_core(job);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    @Override // kotlinx.coroutines.Deferred
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object await(p626l.p634w.AbstractC15044d<? super T> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.CompletableDeferredImpl$await$1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            kotlinx.coroutines.CompletableDeferredImpl$await$1 r0 = (kotlinx.coroutines.CompletableDeferredImpl$await$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.label
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r7
            r6 = r0
            goto L_0x002f
        L_0x0025:
            kotlinx.coroutines.CompletableDeferredImpl$await$1 r0 = new kotlinx.coroutines.CompletableDeferredImpl$await$1
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
        L_0x002f:
            r0 = r6
            java.lang.Object r0 = r0.result
            r7 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r9 = r0
            r0 = r6
            int r0 = r0.label
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0062
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0058
            r0 = r6
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.CompletableDeferredImpl r0 = (kotlinx.coroutines.CompletableDeferredImpl) r0
            r6 = r0
            r0 = r7
            p626l.C14982l.m653a(r0)
            r0 = r7
            r6 = r0
            goto L_0x0081
        L_0x0058:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0062:
            r0 = r7
            p626l.C14982l.m653a(r0)
            r0 = r6
            r1 = r5
            r0.L$0 = r1
            r0 = r6
            r1 = 1
            r0.label = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.awaitInternal$kotlinx_coroutines_core(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L_0x0081
            r0 = r9
            return r0
        L_0x0081:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CompletableDeferredImpl.await(l.w.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public boolean complete(T t) {
        return makeCompleting$kotlinx_coroutines_core(t);
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public boolean completeExceptionally(Throwable th) {
        return makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.Deferred
    public T getCompleted() {
        return (T) getCompletedInternal$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.Deferred
    public SelectClause1<T> getOnAwait() {
        return this;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    @Override // kotlinx.coroutines.selects.SelectClause1
    public <R> void registerSelectClause1(SelectInstance<? super R> selectInstance, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        registerSelectClause1Internal$kotlinx_coroutines_core(selectInstance, pVar);
    }
}
