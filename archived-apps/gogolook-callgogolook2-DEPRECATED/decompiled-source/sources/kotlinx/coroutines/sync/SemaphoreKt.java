package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u0007\u001a)\u0010\r\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e*\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010H\u0086Hø\u0001��¢\u0006\u0002\u0010\u0011\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m815d2 = {"CANCELLED", "Lkotlinx/coroutines/internal/Symbol;", "CANCELLED$annotations", "()V", "RESUMED", "RESUMED$annotations", "SEGMENT_SIZE", "", "SEGMENT_SIZE$annotations", "Semaphore", "Lkotlinx/coroutines/sync/Semaphore;", "permits", "acquiredPermits", "withPermit", ExifInterface.GPS_DIRECTION_TRUE, "action", "Lkotlin/Function0;", "(Lkotlinx/coroutines/sync/Semaphore;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreKt.class */
public final class SemaphoreKt {
    public static final int SEGMENT_SIZE;
    public static final Symbol RESUMED = new Symbol("RESUMED");
    public static final Symbol CANCELLED = new Symbol("CANCELLED");

    static {
        int systemProp$default;
        systemProp$default = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, (Object) null);
        SEGMENT_SIZE = systemProp$default;
    }

    public static /* synthetic */ void CANCELLED$annotations() {
    }

    public static /* synthetic */ void RESUMED$annotations() {
    }

    public static /* synthetic */ void SEGMENT_SIZE$annotations() {
    }

    public static final Semaphore Semaphore(int i, int i2) {
        return new SemaphoreImpl(i, i2);
    }

    public static /* synthetic */ Semaphore Semaphore$default(int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return Semaphore(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object withPermit(kotlinx.coroutines.sync.Semaphore r4, p626l.p641z.p642c.AbstractC15107a<? extends T> r5, p626l.p634w.AbstractC15044d<? super T> r6) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = (kotlinx.coroutines.sync.SemaphoreKt$withPermit$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.label
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            goto L_0x002f
        L_0x0026:
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = new kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            r7 = r0
        L_0x002f:
            r0 = r7
            java.lang.Object r0 = r0.result
            r9 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r10 = r0
            r0 = r7
            int r0 = r0.label
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r7
            java.lang.Object r0 = r0.L$1
            l.z.c.a r0 = (p626l.p641z.p642c.AbstractC15107a) r0
            r5 = r0
            r0 = r7
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.sync.Semaphore r0 = (kotlinx.coroutines.sync.Semaphore) r0
            r6 = r0
            r0 = r9
            p626l.C14982l.m653a(r0)
            goto L_0x0092
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r9
            p626l.C14982l.m653a(r0)
            r0 = r7
            r1 = r4
            r0.L$0 = r1
            r0 = r7
            r1 = r5
            r0.L$1 = r1
            r0 = r7
            r1 = 1
            r0.label = r1
            r0 = r4
            r6 = r0
            r0 = r4
            r1 = r7
            java.lang.Object r0 = r0.acquire(r1)
            r1 = r10
            if (r0 != r1) goto L_0x0092
            r0 = r10
            return r0
        L_0x0092:
            r0 = r5
            java.lang.Object r0 = r0.invoke()     // Catch: all -> 0x00a9
            r4 = r0
            r0 = 1
            p626l.p641z.p643d.C15148j.m389b(r0)
            r0 = r6
            r0.release()
            r0 = 1
            p626l.p641z.p643d.C15148j.m390a(r0)
            r0 = r4
            return r0
        L_0x00a9:
            r4 = move-exception
            r0 = 1
            p626l.p641z.p643d.C15148j.m389b(r0)
            r0 = r6
            r0.release()
            r0 = 1
            p626l.p641z.p643d.C15148j.m390a(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreKt.withPermit(kotlinx.coroutines.sync.Semaphore, l.z.c.a, l.w.d):java.lang.Object");
    }

    public static final Object withPermit$$forInline(Semaphore semaphore, AbstractC15107a aVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        semaphore.acquire(dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        try {
            Object invoke = aVar.invoke();
            C15148j.m389b(1);
            semaphore.release();
            C15148j.m390a(1);
            return invoke;
        } catch (Throwable th) {
            C15148j.m389b(1);
            semaphore.release();
            C15148j.m390a(1);
            throw th;
        }
    }
}
