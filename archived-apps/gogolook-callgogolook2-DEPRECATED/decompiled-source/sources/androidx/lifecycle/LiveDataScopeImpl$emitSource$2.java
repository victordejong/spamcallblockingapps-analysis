package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.LiveDataScopeImpl$emitSource$2", m472f = "CoroutineLiveData.kt", m471l = {94}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/DisposableHandle;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LiveDataScopeImpl$emitSource$2.class */
public final class LiveDataScopeImpl$emitSource$2 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super DisposableHandle>, Object> {
    public final /* synthetic */ LiveData $source;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f77p$;
    public final /* synthetic */ LiveDataScopeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveDataScopeImpl$emitSource$2(LiveDataScopeImpl liveDataScopeImpl, LiveData liveData, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = liveDataScopeImpl;
        this.$source = liveData;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        LiveDataScopeImpl$emitSource$2 liveDataScopeImpl$emitSource$2 = new LiveDataScopeImpl$emitSource$2(this.this$0, this.$source, dVar);
        liveDataScopeImpl$emitSource$2.f77p$ = (CoroutineScope) obj;
        return liveDataScopeImpl$emitSource$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super DisposableHandle> dVar) {
        return ((LiveDataScopeImpl$emitSource$2) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            CoroutineScope coroutineScope = this.f77p$;
            CoroutineLiveData target$lifecycle_livedata_ktx_release = this.this$0.getTarget$lifecycle_livedata_ktx_release();
            LiveData liveData = this.$source;
            this.L$0 = coroutineScope;
            this.label = 1;
            Object emitSource$lifecycle_livedata_ktx_release = target$lifecycle_livedata_ktx_release.emitSource$lifecycle_livedata_ktx_release(liveData, this);
            obj = emitSource$lifecycle_livedata_ktx_release;
            if (emitSource$lifecycle_livedata_ktx_release == a) {
                return a;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
