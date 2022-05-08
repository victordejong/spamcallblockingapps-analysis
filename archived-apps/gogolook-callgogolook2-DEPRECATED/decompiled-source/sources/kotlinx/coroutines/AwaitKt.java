package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\u001a=\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u0004\"\u00020\nH\u0086@ø\u0001��¢\u0006\u0002\u0010\u000b\u001a-\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u001a\u001b\u0010\u0007\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\n0\fH\u0086@ø\u0001��¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m815d2 = {"awaitAll", "", ExifInterface.GPS_DIRECTION_TRUE, "deferreds", "", "Lkotlinx/coroutines/Deferred;", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinAll", "", "jobs", "Lkotlinx/coroutines/Job;", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/AwaitKt.class */
public final class AwaitKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object awaitAll(java.util.Collection<? extends kotlinx.coroutines.Deferred<? extends T>> r4, p626l.p634w.AbstractC15044d<? super java.util.List<? extends T>> r5) {
        /*
            Method dump skipped, instructions count: 188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.awaitAll(java.util.Collection, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object awaitAll(kotlinx.coroutines.Deferred<? extends T>[] r4, p626l.p634w.AbstractC15044d<? super java.util.List<? extends T>> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.AwaitKt$awaitAll$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.AwaitKt$awaitAll$1 r0 = (kotlinx.coroutines.AwaitKt$awaitAll$1) r0
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
            kotlinx.coroutines.AwaitKt$awaitAll$1 r0 = new kotlinx.coroutines.AwaitKt$awaitAll$1
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
            if (r0 == 0) goto L_0x0061
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0057
            r0 = r5
            java.lang.Object r0 = r0.L$0
            kotlinx.coroutines.Deferred[] r0 = (kotlinx.coroutines.Deferred[]) r0
            r4 = r0
            r0 = r6
            p626l.C14982l.m653a(r0)
            r0 = r6
            r4 = r0
            goto L_0x00a0
        L_0x0057:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0061:
            r0 = r6
            p626l.C14982l.m653a(r0)
            r0 = r4
            int r0 = r0.length
            if (r0 != 0) goto L_0x006f
            r0 = 1
            r7 = r0
            goto L_0x0071
        L_0x006f:
            r0 = 0
            r7 = r0
        L_0x0071:
            r0 = r7
            if (r0 == 0) goto L_0x007c
            java.util.List r0 = p626l.p632u.C15021m.m565a()
            r4 = r0
            goto L_0x00a5
        L_0x007c:
            kotlinx.coroutines.AwaitAll r0 = new kotlinx.coroutines.AwaitAll
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            r1 = r4
            r0.L$0 = r1
            r0 = r5
            r1 = 1
            r0.label = r1
            r0 = r6
            r1 = r5
            java.lang.Object r0 = r0.await(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r8
            if (r0 != r1) goto L_0x00a0
            r0 = r8
            return r0
        L_0x00a0:
            r0 = r4
            java.util.List r0 = (java.util.List) r0
            r4 = r0
        L_0x00a5:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.awaitAll(kotlinx.coroutines.Deferred[], l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object joinAll(java.util.Collection<? extends kotlinx.coroutines.Job> r4, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r5) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.joinAll(java.util.Collection, l.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x010e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00fb -> B:22:0x0101). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object joinAll(kotlinx.coroutines.Job[] r4, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r5) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.joinAll(kotlinx.coroutines.Job[], l.w.d):java.lang.Object");
    }
}
