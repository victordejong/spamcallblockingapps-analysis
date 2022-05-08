package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import org.jetbrains.annotations.NotNull;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020��¢\u0006\u0004\b\u0004\u0010\u0005\u001a!\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a\u0019\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010\u001a8\u0010\u0014\u001a\u00028��\"\u0004\b��\u0010\u0011*\u00020\u00032\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0086Hø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u0014\u0010\u0015\"\u001c\u0010\u0017\u001a\u00020\u00168\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u0019\u0010\u001a\"\u001c\u0010\u001b\u001a\u00020\u00168\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u0012\u0004\b\u001c\u0010\u001a\"\u001c\u0010\u001d\u001a\u00020��8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b\u001f\u0010\u001a\"\u001c\u0010 \u001a\u00020\u00168\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b \u0010\u0018\u0012\u0004\b!\u0010\u001a\"\u001c\u0010\"\u001a\u00020��8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\"\u0010\u001e\u0012\u0004\b#\u0010\u001a\"\u001c\u0010$\u001a\u00020\u00168\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b$\u0010\u0018\u0012\u0004\b%\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"", "permits", "acquiredPermits", "Lkotlinx/coroutines/sync/Semaphore;", "Semaphore", "(II)Lkotlinx/coroutines/sync/Semaphore;", "", Name.MARK, "Lkotlinx/coroutines/sync/SemaphoreSegment;", "prev", "createSegment", "(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", "Lkotlinx/coroutines/CancellableContinuation;", "", "", "tryResume", "(Lkotlinx/coroutines/CancellableContinuation;)Z", "T", "Lkotlin/Function0;", "action", "withPermit", "(Lkotlinx/coroutines/sync/Semaphore;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "BROKEN", "Lkotlinx/coroutines/internal/Symbol;", "getBROKEN$annotations", "()V", "CANCELLED", "getCANCELLED$annotations", "MAX_SPIN_CYCLES", "I", "getMAX_SPIN_CYCLES$annotations", "PERMIT", "getPERMIT$annotations", "SEGMENT_SIZE", "getSEGMENT_SIZE$annotations", "TAKEN", "getTAKEN$annotations", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreKt.class */
public final class SemaphoreKt {

    /* renamed from: a */
    private static final int f24090a;

    /* renamed from: b */
    private static final Symbol f24091b = new Symbol("PERMIT");

    /* renamed from: c */
    private static final Symbol f24092c = new Symbol("TAKEN");

    /* renamed from: d */
    private static final Symbol f24093d = new Symbol("BROKEN");

    /* renamed from: e */
    private static final Symbol f24094e = new Symbol("CANCELLED");

    /* renamed from: f */
    private static final int f24095f;

    static {
        int d;
        int d2;
        d = SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f24090a = d;
        d2 = SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f24095f = d2;
    }

    @NotNull
    /* renamed from: a */
    public static final Semaphore m264a(int i, int i2) {
        return new SemaphoreImpl(i, i2);
    }

    /* renamed from: b */
    public static /* synthetic */ Semaphore m263b(int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return m264a(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static final SemaphoreSegment m254k(long j, SemaphoreSegment semaphoreSegment) {
        return new SemaphoreSegment(j, semaphoreSegment, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static final boolean m253l(CancellableContinuation<? super Unit> cancellableContinuation) {
        Object a = CancellableContinuation.DefaultImpls.m1368a(cancellableContinuation, Unit.f20447a, null, 2, null);
        if (a == null) {
            return false;
        }
        cancellableContinuation.mo1365D(a);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object m252m(@org.jetbrains.annotations.NotNull kotlinx.coroutines.sync.Semaphore r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends T> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = (kotlinx.coroutines.sync.SemaphoreKt$withPermit$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f24097g
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f24097g = r1
            goto L_0x002f
        L_0x0026:
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = new kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r7 = r0
        L_0x002f:
            r0 = r7
            java.lang.Object r0 = r0.f24096f
            r9 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r10 = r0
            r0 = r7
            int r0 = r0.f24097g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r7
            java.lang.Object r0 = r0.f24099i
            kotlin.jvm.functions.Function0 r0 = (kotlin.jvm.functions.Function0) r0
            r5 = r0
            r0 = r7
            java.lang.Object r0 = r0.f24098h
            kotlinx.coroutines.sync.Semaphore r0 = (kotlinx.coroutines.sync.Semaphore) r0
            r6 = r0
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            goto L_0x0092
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            r0 = r7
            r1 = r4
            r0.f24098h = r1
            r0 = r7
            r1 = r5
            r0.f24099i = r1
            r0 = r7
            r1 = 1
            r0.f24097g = r1
            r0 = r4
            r6 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r0 = r0.mo269a(r1)
            r1 = r10
            if (r0 != r1) goto L_0x0092
            r0 = r10
            return r0
        L_0x0092:
            r0 = r5
            java.lang.Object r0 = r0.invoke()     // Catch: all -> 0x00a9
            r4 = r0
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1836b(r0)
            r0 = r6
            r0.release()
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1837a(r0)
            r0 = r4
            return r0
        L_0x00a9:
            r4 = move-exception
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1836b(r0)
            r0 = r6
            r0.release()
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1837a(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreKt.m252m(kotlinx.coroutines.sync.Semaphore, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
