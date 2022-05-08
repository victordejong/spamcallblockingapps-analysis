package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.NopCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0019\u0010��\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0002H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0003\u001aV\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u000223\b\u0004\u0010\u0005\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006H\u0086Hø\u0001��¢\u0006\u0002\u0010\f\u001ak\u0010\r\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00022H\b\u0004\u0010\u0005\u001aB\b\u0001\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000eH\u0087Hø\u0001��¢\u0006\u0002\u0010\u0011\u001aT\u0010\u0012\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u000221\u0010\u0005\u001a-\b\u0001\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006H\u0087@ø\u0001��¢\u0006\u0002\u0010\f\u001a/\u0010\u0013\u001a\u00020\u0001\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0002H\u0087Hø\u0001��¢\u0006\u0002\u0010\u0016\u001a \u0010\u0017\u001a\u00020\u0018\"\u0004\b��\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m815d2 = {"collect", "", "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "action", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", C13032a.f29462d, "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectIndexed", "Lkotlin/Function3;", "", "index", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectLatest", "emitAll", "Lkotlinx/coroutines/flow/FlowCollector;", "flow", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launchIn", "Lkotlinx/coroutines/Job;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectKt.class */
public final /* synthetic */ class FlowKt__CollectKt {
    public static final Object collect(Flow<?> flow, AbstractC15044d<? super C14989s> dVar) {
        Object collect = flow.collect(NopCollector.INSTANCE, dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    public static final <T> Object collect(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15044d<? super C14989s> dVar) {
        Object collect = flow.collect(new FlowKt__CollectKt$collect$3(pVar), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    public static final Object collect$$forInline(Flow flow, AbstractC15122p pVar, AbstractC15044d dVar) {
        FlowKt__CollectKt$collect$3 flowKt__CollectKt$collect$3 = new FlowKt__CollectKt$collect$3(pVar);
        C15148j.m388c(0);
        Object collect = flow.collect(flowKt__CollectKt$collect$3, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return collect;
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object collectIndexed(Flow<? extends T> flow, AbstractC15123q<? super Integer, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar, AbstractC15044d<? super C14989s> dVar) {
        Object collect = flow.collect(new FlowKt__CollectKt$collectIndexed$2(qVar), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    @ExperimentalCoroutinesApi
    public static final Object collectIndexed$$forInline(Flow flow, AbstractC15123q qVar, AbstractC15044d dVar) {
        FlowKt__CollectKt$collectIndexed$2 flowKt__CollectKt$collectIndexed$2 = new FlowKt__CollectKt$collectIndexed$2(qVar);
        C15148j.m388c(0);
        Object collect = flow.collect(flowKt__CollectKt$collectIndexed$2, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return collect;
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object collectLatest(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15044d<? super C14989s> dVar) {
        Object collect = FlowKt.collect(FlowKt.buffer(FlowKt.mapLatest(flow, pVar), 0), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, Flow<? extends T> flow, AbstractC15044d<? super C14989s> dVar) {
        Object collect = flow.collect(flowCollector, dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    @ExperimentalCoroutinesApi
    public static final Object emitAll$$forInline(FlowCollector flowCollector, Flow flow, AbstractC15044d dVar) {
        C15148j.m388c(0);
        Object collect = flow.collect(flowCollector, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return collect;
    }

    @ExperimentalCoroutinesApi
    public static final <T> Job launchIn(Flow<? extends T> flow, CoroutineScope coroutineScope) {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new FlowKt__CollectKt$launchIn$1(flow, null), 3, null);
        return launch$default;
    }
}
