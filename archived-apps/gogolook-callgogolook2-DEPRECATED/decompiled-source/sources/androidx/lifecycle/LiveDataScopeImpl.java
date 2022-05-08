package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0017H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0018R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\u0004\u0018\u00018��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, m815d2 = {"Landroidx/lifecycle/LiveDataScopeImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveDataScope;", AnimatedVectorDrawableCompat.TARGET, "Landroidx/lifecycle/CoroutineLiveData;", "context", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/coroutines/CoroutineContext;)V", "coroutineContext", "latestValue", "getLatestValue", "()Ljava/lang/Object;", "getTarget$lifecycle_livedata_ktx_release", "()Landroidx/lifecycle/CoroutineLiveData;", "setTarget$lifecycle_livedata_ktx_release", "(Landroidx/lifecycle/CoroutineLiveData;)V", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitSource", "Lkotlinx/coroutines/DisposableHandle;", "source", "Landroidx/lifecycle/LiveData;", "(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lifecycle-livedata-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveDataScopeImpl.class */
public final class LiveDataScopeImpl<T> implements LiveDataScope<T> {
    public final AbstractC15049g coroutineContext;
    public CoroutineLiveData<T> target;

    public LiveDataScopeImpl(CoroutineLiveData<T> coroutineLiveData, AbstractC15049g gVar) {
        C15149k.m377b(coroutineLiveData, AnimatedVectorDrawableCompat.TARGET);
        C15149k.m377b(gVar, "context");
        this.target = coroutineLiveData;
        this.coroutineContext = gVar.plus(Dispatchers.getMain().getImmediate());
    }

    @Override // androidx.lifecycle.LiveDataScope
    public Object emit(T t, AbstractC15044d<? super C14989s> dVar) {
        return BuildersKt.withContext(this.coroutineContext, new LiveDataScopeImpl$emit$2(this, t, null), dVar);
    }

    @Override // androidx.lifecycle.LiveDataScope
    public Object emitSource(LiveData<T> liveData, AbstractC15044d<? super DisposableHandle> dVar) {
        return BuildersKt.withContext(this.coroutineContext, new LiveDataScopeImpl$emitSource$2(this, liveData, null), dVar);
    }

    @Override // androidx.lifecycle.LiveDataScope
    public T getLatestValue() {
        return this.target.getValue();
    }

    public final CoroutineLiveData<T> getTarget$lifecycle_livedata_ktx_release() {
        return this.target;
    }

    public final void setTarget$lifecycle_livedata_ktx_release(CoroutineLiveData<T> coroutineLiveData) {
        C15149k.m377b(coroutineLiveData, "<set-?>");
        this.target = coroutineLiveData;
    }
}
