package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J7\u0010\u0007\u001a\u00020\b2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eø\u0001��¢\u0006\u0002\u0010\u000fJ7\u0010\u0010\u001a\u00020\b2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eø\u0001��¢\u0006\u0002\u0010\u000fJ7\u0010\u0011\u001a\u00020\b2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n¢\u0006\u0002\b\u000eø\u0001��¢\u0006\u0002\u0010\u000fR\u0012\u0010\u0003\u001a\u00020\u0004X \u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m815d2 = {"Landroidx/lifecycle/LifecycleCoroutineScope;", "Lkotlinx/coroutines/CoroutineScope;", "()V", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "launchWhenCreated", "Lkotlinx/coroutines/Job;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "launchWhenResumed", "launchWhenStarted", "lifecycle-runtime-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleCoroutineScope.class */
public abstract class LifecycleCoroutineScope implements CoroutineScope {
    public abstract Lifecycle getLifecycle$lifecycle_runtime_ktx_release();

    public final Job launchWhenCreated(AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        C15149k.m377b(pVar, "block");
        return BuildersKt.launch$default(this, null, null, new LifecycleCoroutineScope$launchWhenCreated$1(this, pVar, null), 3, null);
    }

    public final Job launchWhenResumed(AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        C15149k.m377b(pVar, "block");
        return BuildersKt.launch$default(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, pVar, null), 3, null);
    }

    public final Job launchWhenStarted(AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        C15149k.m377b(pVar, "block");
        return BuildersKt.launch$default(this, null, null, new LifecycleCoroutineScope$launchWhenStarted$1(this, pVar, null), 3, null);
    }
}
