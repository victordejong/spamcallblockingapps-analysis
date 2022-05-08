package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a!\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0003\u001aE\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0086@ø\u0001��¢\u0006\u0002\u0010\t\u001ay\u0010\n\u001a\u0002H\u000b\"\u0004\b��\u0010\u0001\"\u0004\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\f\u001a\u0002H\u000b2H\b\u0004\u0010\r\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u000b¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000eH\u0087Hø\u0001��¢\u0006\u0002\u0010\u0013\u001as\u0010\u0014\u001a\u0002H\u0015\"\u0004\b��\u0010\u0015\"\b\b\u0001\u0010\u0001*\u0002H\u0015*\b\u0012\u0004\u0012\u0002H\u00010\u00022F\u0010\r\u001aB\b\u0001\u0012\u0013\u0012\u0011H\u0015¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u0011H\u0001¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u000eH\u0087@ø\u0001��¢\u0006\u0002\u0010\u0017\u001a!\u0010\u0018\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0003\u001a'\u0010\u0019\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\b*\b\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m815d2 = {"first", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/Flow;", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "predicate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fold", "R", "initial", "operation", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "acc", C13032a.f29462d, "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reduce", ExifInterface.LATITUDE_SOUTH, "accumulator", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "single", "singleOrNull", "kotlinx-coroutines-core"}, m814k = 5, m813mv = {1, 1, 16}, m810xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ReduceKt.class */
public final /* synthetic */ class FlowKt__ReduceKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object first(kotlinx.coroutines.flow.Flow<? extends T> r4, p626l.p634w.AbstractC15044d<? super T> r5) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.first(kotlinx.coroutines.flow.Flow, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object first(kotlinx.coroutines.flow.Flow<? extends T> r4, p626l.p641z.p642c.AbstractC15122p<? super T, ? super p626l.p634w.AbstractC15044d<? super java.lang.Boolean>, ? extends java.lang.Object> r5, p626l.p634w.AbstractC15044d<? super T> r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.first(kotlinx.coroutines.flow.Flow, l.z.c.p, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, R> java.lang.Object fold(kotlinx.coroutines.flow.Flow<? extends T> r5, R r6, p626l.p641z.p642c.AbstractC15123q<? super R, ? super T, ? super p626l.p634w.AbstractC15044d<? super R>, ? extends java.lang.Object> r7, p626l.p634w.AbstractC15044d<? super R> r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.fold(kotlinx.coroutines.flow.Flow, java.lang.Object, l.z.c.q, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ExperimentalCoroutinesApi
    public static final Object fold$$forInline(Flow flow, Object obj, AbstractC15123q qVar, AbstractC15044d dVar) {
        C15164z zVar = new C15164z();
        zVar.f33152a = obj;
        FlowKt__ReduceKt$fold$$inlined$collect$1 flowKt__ReduceKt$fold$$inlined$collect$1 = new FlowKt__ReduceKt$fold$$inlined$collect$1(zVar, qVar);
        C15148j.m388c(0);
        flow.collect(flowKt__ReduceKt$fold$$inlined$collect$1, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return zVar.f33152a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d5  */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.internal.Symbol, T] */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <S, T extends S> java.lang.Object reduce(kotlinx.coroutines.flow.Flow<? extends T> r5, p626l.p641z.p642c.AbstractC15123q<? super S, ? super T, ? super p626l.p634w.AbstractC15044d<? super S>, ? extends java.lang.Object> r6, p626l.p634w.AbstractC15044d<? super S> r7) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.reduce(kotlinx.coroutines.flow.Flow, l.z.c.q, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object single(kotlinx.coroutines.flow.Flow<? extends T> r4, p626l.p634w.AbstractC15044d<? super T> r5) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.single(kotlinx.coroutines.flow.Flow, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object singleOrNull(kotlinx.coroutines.flow.Flow<? extends T> r4, p626l.p634w.AbstractC15044d<? super T> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.label
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r6
            r5 = r0
            goto L_0x002e
        L_0x0025:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002e:
            r0 = r5
            java.lang.Object r0 = r0.result
            r6 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r8 = r0
            r0 = r5
            int r0 = r0.label
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006f
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0065
            r0 = r5
            java.lang.Object r0 = r0.L$2
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.L$1
            l.z.d.z r0 = (p626l.p641z.p643d.C15164z) r0
            r4 = r0
            r0 = r5
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            r5 = r0
            r0 = r6
            p626l.C14982l.m653a(r0)
            goto L_0x00b1
        L_0x0065:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006f:
            r0 = r6
            p626l.C14982l.m653a(r0)
            l.z.d.z r0 = new l.z.d.z
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = 0
            r0.f33152a = r1
            kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collect$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collect$1
            r1 = r0
            r2 = r6
            r1.<init>()
            r9 = r0
            r0 = r5
            r1 = r4
            r0.L$0 = r1
            r0 = r5
            r1 = r6
            r0.L$1 = r1
            r0 = r5
            r1 = r4
            r0.L$2 = r1
            r0 = r5
            r1 = 1
            r0.label = r1
            r0 = r4
            r1 = r9
            r2 = r5
            java.lang.Object r0 = r0.collect(r1, r2)
            r1 = r8
            if (r0 != r1) goto L_0x00af
            r0 = r8
            return r0
        L_0x00af:
            r0 = r6
            r4 = r0
        L_0x00b1:
            r0 = r4
            T r0 = r0.f33152a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.singleOrNull(kotlinx.coroutines.flow.Flow, l.w.d):java.lang.Object");
    }
}
