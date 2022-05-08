package kotlinx.coroutines.intrinsics;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.DispatchedContinuationKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010��\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\u0082\b\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0003H��\u001a>\u0010\u0006\u001a\u00020\u0001\"\u0004\b��\u0010\b*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003H\u0007ø\u0001��¢\u0006\u0002\u0010\u000b\u001aR\u0010\u0006\u001a\u00020\u0001\"\u0004\b��\u0010\f\"\u0004\b\u0001\u0010\b*\u001e\b\u0001\u0012\u0004\u0012\u0002H\f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\n0\r2\u0006\u0010\u000e\u001a\u0002H\f2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\b0\u0003H��ø\u0001��¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, m815d2 = {"runSafely", "", "completion", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/Function0;", "startCoroutineCancellable", "fatalCompletion", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/intrinsics/CancellableKt.class */
public final class CancellableKt {
    public static final void runSafely(AbstractC15044d<?> dVar, AbstractC15107a<C14989s> aVar) {
        try {
            aVar.invoke();
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            dVar.resumeWith(a);
        }
    }

    public static final void startCoroutineCancellable(AbstractC15044d<? super C14989s> dVar, AbstractC15044d<?> dVar2) {
        try {
            AbstractC15044d a = C15059b.m481a(dVar);
            C14979k.C14980a aVar = C14979k.f33013a;
            C14989s sVar = C14989s.f33022a;
            C14979k.m657a(sVar);
            DispatchedContinuationKt.resumeCancellableWith(a, sVar);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a2 = C14982l.m652a(th);
            C14979k.m657a(a2);
            dVar2.resumeWith(a2);
        }
    }

    @InternalCoroutinesApi
    public static final <T> void startCoroutineCancellable(AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar, AbstractC15044d<? super T> dVar) {
        try {
            AbstractC15044d a = C15059b.m481a(C15059b.m480a(lVar, dVar));
            C14979k.C14980a aVar = C14979k.f33013a;
            C14989s sVar = C14989s.f33022a;
            C14979k.m657a(sVar);
            DispatchedContinuationKt.resumeCancellableWith(a, sVar);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a2 = C14982l.m652a(th);
            C14979k.m657a(a2);
            dVar.resumeWith(a2);
        }
    }

    public static final <R, T> void startCoroutineCancellable(AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar, R r, AbstractC15044d<? super T> dVar) {
        try {
            AbstractC15044d a = C15059b.m481a(C15059b.m479a(pVar, r, dVar));
            C14979k.C14980a aVar = C14979k.f33013a;
            C14989s sVar = C14989s.f33022a;
            C14979k.m657a(sVar);
            DispatchedContinuationKt.resumeCancellableWith(a, sVar);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a2 = C14982l.m652a(th);
            C14979k.m657a(a2);
            dVar.resumeWith(a2);
        }
    }
}
