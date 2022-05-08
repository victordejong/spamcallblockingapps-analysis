package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"kotlinx/coroutines/BuildersKt__BuildersKt", "kotlinx/coroutines/BuildersKt__Builders_commonKt"}, m814k = 4, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/BuildersKt.class */
public final class BuildersKt {
    public static final <T> Deferred<T> async(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        return BuildersKt__Builders_commonKt.async(coroutineScope, gVar, coroutineStart, pVar);
    }

    public static /* synthetic */ Deferred async$default(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p pVar, int i, Object obj) {
        return BuildersKt__Builders_commonKt.async$default(coroutineScope, gVar, coroutineStart, pVar, i, obj);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object invoke(CoroutineDispatcher coroutineDispatcher, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        return BuildersKt__Builders_commonKt.invoke(coroutineDispatcher, pVar, dVar);
    }

    public static final Job launch(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return BuildersKt__Builders_commonKt.launch(coroutineScope, gVar, coroutineStart, pVar);
    }

    public static /* synthetic */ Job launch$default(CoroutineScope coroutineScope, AbstractC15049g gVar, CoroutineStart coroutineStart, AbstractC15122p pVar, int i, Object obj) {
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, gVar, coroutineStart, pVar, i, obj);
    }

    public static final <T> T runBlocking(AbstractC15049g gVar, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar) throws InterruptedException {
        return (T) BuildersKt__BuildersKt.runBlocking(gVar, pVar);
    }

    public static /* synthetic */ Object runBlocking$default(AbstractC15049g gVar, AbstractC15122p pVar, int i, Object obj) throws InterruptedException {
        return BuildersKt__BuildersKt.runBlocking$default(gVar, pVar, i, obj);
    }

    public static final <T> Object withContext(AbstractC15049g gVar, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        return BuildersKt__Builders_commonKt.withContext(gVar, pVar, dVar);
    }
}
