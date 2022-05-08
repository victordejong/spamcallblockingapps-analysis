package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15045e;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001aH\u0010\u0004\u001a\u0002H\u0005\"\u0004\b��\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rH\u0086@ø\u0001��¢\u0006\u0002\u0010\u000e\u001a[\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0010\"\u0004\b��\u0010\u0005*\u00020\n2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00122'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rø\u0001��¢\u0006\u0002\u0010\u0013\u001aF\u0010\u0014\u001a\u0002H\u0005\"\u0004\b��\u0010\u0005*\u00020\u00152)\b\b\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00050\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rH\u0087Jø\u0001��¢\u0006\u0002\u0010\u0016\u001aO\u0010\u0017\u001a\u00020\u0018*\u00020\n2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00122'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\t¢\u0006\u0002\b\rø\u0001��¢\u0006\u0002\u0010\u001a\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m815d2 = {"RESUMED", "", "SUSPENDED", "UNDECIDED", "withContext", ExifInterface.GPS_DIRECTION_TRUE, "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "async", "Lkotlinx/coroutines/Deferred;", "start", "Lkotlinx/coroutines/CoroutineStart;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;", "invoke", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launch", "Lkotlinx/coroutines/Job;", "", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/BuildersKt__Builders_commonKt.class */
public final /* synthetic */ class BuildersKt__Builders_commonKt {
    public static final int RESUMED = 2;
    public static final int SUSPENDED = 1;
    public static final int UNDECIDED = 0;

    public static final <T> Deferred<T> async(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        AbstractC15049g newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, gVar);
        DeferredCoroutine lazyDeferredCoroutine = coroutineStart.isLazy() ? new LazyDeferredCoroutine(newCoroutineContext, pVar) : new DeferredCoroutine(newCoroutineContext, true);
        ((AbstractCoroutine) lazyDeferredCoroutine).start(coroutineStart, lazyDeferredCoroutine, pVar);
        return lazyDeferredCoroutine;
    }

    public static /* synthetic */ Deferred async$default(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p pVar, int i, Object obj) {
        if ((i & 1) != 0) {
            gVar = C15055h.f33080a;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return BuildersKt.async(coroutineScope, gVar, coroutineStart, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object invoke(CoroutineDispatcher coroutineDispatcher, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        return BuildersKt.withContext(coroutineDispatcher, pVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final Object invoke$$forInline(CoroutineDispatcher coroutineDispatcher, AbstractC15122p pVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        Object withContext = BuildersKt.withContext(coroutineDispatcher, pVar, dVar);
        C15148j.m388c(1);
        return withContext;
    }

    public static final Job launch(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        AbstractC15049g newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, gVar);
        AbstractCoroutine lazyStandaloneCoroutine = coroutineStart.isLazy() ? new LazyStandaloneCoroutine(newCoroutineContext, pVar) : new StandaloneCoroutine(newCoroutineContext, true);
        lazyStandaloneCoroutine.start(coroutineStart, lazyStandaloneCoroutine, pVar);
        return lazyStandaloneCoroutine;
    }

    public static /* synthetic */ Job launch$default(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p pVar, int i, Object obj) {
        if ((i & 1) != 0) {
            gVar = C15055h.f33080a;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return BuildersKt.launch(coroutineScope, gVar, coroutineStart, pVar);
    }

    public static final <T> Object withContext(AbstractC15049g gVar, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        Object obj;
        AbstractC15049g context = dVar.getContext();
        AbstractC15049g plus = context.plus(gVar);
        YieldKt.checkCompletion(plus);
        if (plus == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(plus, dVar);
            obj = UndispatchedKt.startUndispatchedOrReturn(scopeCoroutine, scopeCoroutine, pVar);
        } else if (C15149k.m384a((AbstractC15045e) plus.get(AbstractC15045e.f33077M), (AbstractC15045e) context.get(AbstractC15045e.f33077M))) {
            UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(plus, dVar);
            Object updateThreadContext = ThreadContextKt.updateThreadContext(plus, null);
            try {
                obj = UndispatchedKt.startUndispatchedOrReturn(undispatchedCoroutine, undispatchedCoroutine, pVar);
            } finally {
                ThreadContextKt.restoreThreadContext(plus, updateThreadContext);
            }
        } else {
            DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(plus, dVar);
            dispatchedCoroutine.initParentJob$kotlinx_coroutines_core();
            CancellableKt.startCoroutineCancellable(pVar, dispatchedCoroutine, dispatchedCoroutine);
            obj = dispatchedCoroutine.getResult();
        }
        if (obj == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return obj;
    }
}
