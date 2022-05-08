package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a.\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0087\b¢\u0006\u0002\u0010\u0007*\u0010\b\u0007\u0010\b\"\u00020\u00032\u00020\u0003B\u0002\b\t¨\u0006\n"}, m815d2 = {"synchronized", ExifInterface.GPS_DIRECTION_TRUE, "lock", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "block", "Lkotlin/Function0;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "SynchronizedObject", "Lkotlinx/coroutines/InternalCoroutinesApi;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/SynchronizedKt.class */
public final class SynchronizedKt {
    @InternalCoroutinesApi
    public static /* synthetic */ void SynchronizedObject$annotations() {
    }

    @InternalCoroutinesApi
    /* renamed from: synchronized  reason: not valid java name */
    public static final <T> T m41896synchronized(Object obj, AbstractC15107a<? extends T> aVar) {
        T t;
        synchronized (obj) {
            try {
                t = (T) aVar.invoke();
                C15148j.m389b(1);
            } catch (Throwable th) {
                C15148j.m389b(1);
                C15148j.m390a(1);
                throw th;
            }
        }
        C15148j.m390a(1);
        return t;
    }
}
