package p660rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import p660rx.Subscriber;
import p660rx.functions.Func1;
import p660rx.internal.util.UtilityFunctions;
/* renamed from: rx.internal.operators.BackpressureUtils */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/BackpressureUtils.class */
public final class BackpressureUtils {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long addCap(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            long r0 = r0 + r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0010
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r5 = r0
        L_0x0010:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.BackpressureUtils.addCap(long, long):long");
    }

    public static long getAndAddRequest(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, addCap(j2, j)));
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long multiplyCap(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            long r0 = r0 * r1
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r5
            r1 = r7
            long r0 = r0 | r1
            r1 = 31
            long r0 = r0 >>> r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            r0 = r9
            r11 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = r7
            long r0 = r0 / r1
            r1 = r5
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r0
        L_0x0030:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.BackpressureUtils.multiplyCap(long, long):long");
    }

    public static <T> void postCompleteDone(AtomicLong atomicLong, Queue<T> queue, Subscriber<? super T> subscriber) {
        postCompleteDone(atomicLong, queue, subscriber, UtilityFunctions.identity());
    }

    public static <T, R> void postCompleteDone(AtomicLong atomicLong, Queue<T> queue, Subscriber<? super R> subscriber, Func1<? super T, ? extends R> func1) {
        long j;
        do {
            j = atomicLong.get();
            if ((j & Long.MIN_VALUE) != 0) {
                return;
            }
        } while (!atomicLong.compareAndSet(j, Long.MIN_VALUE | j));
        if (j != 0) {
            postCompleteDrain(atomicLong, queue, subscriber, func1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T, R> void postCompleteDrain(java.util.concurrent.atomic.AtomicLong r6, java.util.Queue<T> r7, p660rx.Subscriber<? super R> r8, p660rx.functions.Func1<? super T, ? extends R> r9) {
        /*
            r0 = r6
            long r0 = r0.get()
            r10 = r0
            r0 = r10
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
        L_0x000f:
            r0 = r8
            boolean r0 = r0.isUnsubscribed()
            if (r0 == 0) goto L_0x0017
            return
        L_0x0017:
            r0 = r7
            java.lang.Object r0 = r0.poll()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0029
            r0 = r8
            r0.onCompleted()
            return
        L_0x0029:
            r0 = r8
            r1 = r9
            r2 = r6
            java.lang.Object r1 = r1.call(r2)
            r0.onNext(r1)
            goto L_0x000f
        L_0x0039:
            r0 = -9223372036854775808
            r12 = r0
        L_0x003e:
            r0 = r12
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x007d
            r0 = r8
            boolean r0 = r0.isUnsubscribed()
            if (r0 == 0) goto L_0x0052
            return
        L_0x0052:
            r0 = r7
            java.lang.Object r0 = r0.poll()
            r15 = r0
            r0 = r15
            if (r0 != 0) goto L_0x0066
            r0 = r8
            r0.onCompleted()
            return
        L_0x0066:
            r0 = r8
            r1 = r9
            r2 = r15
            java.lang.Object r1 = r1.call(r2)
            r0.onNext(r1)
            r0 = r12
            r1 = 1
            long r0 = r0 + r1
            r12 = r0
            goto L_0x003e
        L_0x007d:
            r0 = r14
            if (r0 != 0) goto L_0x009a
            r0 = r8
            boolean r0 = r0.isUnsubscribed()
            if (r0 == 0) goto L_0x008a
            return
        L_0x008a:
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x009a
            r0 = r8
            r0.onCompleted()
            return
        L_0x009a:
            r0 = r6
            long r0 = r0.get()
            r16 = r0
            r0 = r16
            r10 = r0
            r0 = r16
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003e
            r0 = r6
            r1 = r12
            r2 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            long r1 = r1 & r2
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.operators.BackpressureUtils.postCompleteDrain(java.util.concurrent.atomic.AtomicLong, java.util.Queue, rx.Subscriber, rx.functions.Func1):void");
    }

    public static <T> boolean postCompleteRequest(AtomicLong atomicLong, long j, Queue<T> queue, Subscriber<? super T> subscriber) {
        return postCompleteRequest(atomicLong, j, queue, subscriber, UtilityFunctions.identity());
    }

    public static <T, R> boolean postCompleteRequest(AtomicLong atomicLong, long j, Queue<T> queue, Subscriber<? super R> subscriber, Func1<? super T, ? extends R> func1) {
        long j2;
        long j3;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            boolean z = true;
            boolean z2 = true;
            if (i == 0) {
                if ((atomicLong.get() & Long.MIN_VALUE) != 0) {
                    z2 = false;
                }
                return z2;
            }
            do {
                j2 = atomicLong.get();
                j3 = j2 & Long.MIN_VALUE;
            } while (!atomicLong.compareAndSet(j2, addCap(Long.MAX_VALUE & j2, j) | j3));
            if (j2 == Long.MIN_VALUE) {
                postCompleteDrain(atomicLong, queue, subscriber, func1);
                return false;
            }
            if (j3 != 0) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("n >= 0 required but it was " + j);
    }

    public static long produced(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                throw new IllegalStateException("More produced than requested: " + j3);
            }
        } while (!atomicLong.compareAndSet(j2, j3));
        return j3;
    }

    public static boolean validate(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            return i != 0;
        }
        throw new IllegalArgumentException("n >= 0 required but it was " + j);
    }
}
