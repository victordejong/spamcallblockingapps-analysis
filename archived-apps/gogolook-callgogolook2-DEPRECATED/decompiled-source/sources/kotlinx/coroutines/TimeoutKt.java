package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H��\u001a_\u0010\u0006\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\b\"\b\b\u0001\u0010\t*\u0002H\b2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t0\n2'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u000fH\u0002ø\u0001��¢\u0006\u0002\u0010\u0010\u001aH\u0010\u0011\u001a\u0002H\t\"\u0004\b��\u0010\t2\u0006\u0010\u0012\u001a\u00020\u00032'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u000fH\u0086@ø\u0001��¢\u0006\u0002\u0010\u0013\u001aJ\u0010\u0014\u001a\u0004\u0018\u0001H\t\"\u0004\b��\u0010\t2\u0006\u0010\u0012\u001a\u00020\u00032'\u0010\u000b\u001a#\b\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00070\f¢\u0006\u0002\b\u000fH\u0086@ø\u0001��¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"TimeoutCancellationException", "Lkotlinx/coroutines/TimeoutCancellationException;", "time", "", "coroutine", "Lkotlinx/coroutines/Job;", "setupTimeout", "", "U", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/TimeoutCoroutine;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "withTimeout", "timeMillis", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTimeoutOrNull", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/TimeoutKt.class */
public final class TimeoutKt {
    public static final TimeoutCancellationException TimeoutCancellationException(long j, Job job) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", job);
    }

    public static final <U, T extends U> Object setupTimeout(TimeoutCoroutine<U, ? super T> timeoutCoroutine, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        JobKt.disposeOnCompletion(timeoutCoroutine, DelayKt.getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine));
        return UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(timeoutCoroutine, timeoutCoroutine, pVar);
    }

    public static final <T> Object withTimeout(long j, AbstractC15122p<? super CoroutineScope, ? super AbstractC15044d<? super T>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        if (j > 0) {
            Object obj = setupTimeout(new TimeoutCoroutine(j, dVar), pVar);
            if (obj == C15064c.m478a()) {
                C15072h.m462c(dVar);
            }
            return obj;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fb  */
    /* JADX WARN: Type inference failed for: r0v23, types: [kotlinx.coroutines.TimeoutCoroutine, T] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object withTimeoutOrNull(long r5, p626l.p641z.p642c.AbstractC15122p<? super kotlinx.coroutines.CoroutineScope, ? super p626l.p634w.AbstractC15044d<? super T>, ? extends java.lang.Object> r7, p626l.p634w.AbstractC15044d<? super T> r8) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(long, l.z.c.p, l.w.d):java.lang.Object");
    }
}
