package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14979k;
import p626l.C14982l;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u0007\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\bH��\"\u0018\u0010��\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\t"}, m815d2 = {"classSimpleName", "", "", "getClassSimpleName", "(Ljava/lang/Object;)Ljava/lang/String;", "hexAddress", "getHexAddress", "toDebugString", "Lkotlin/coroutines/Continuation;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DebugStringsKt.class */
public final class DebugStringsKt {
    public static final String getClassSimpleName(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String getHexAddress(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String toDebugString(AbstractC15044d<?> dVar) {
        Object obj;
        String str;
        if (dVar instanceof DispatchedContinuation) {
            str = dVar.toString();
        } else {
            try {
                C14979k.C14980a aVar = C14979k.f33013a;
                obj = dVar + '@' + getHexAddress(dVar);
                C14979k.m657a(obj);
            } catch (Throwable th) {
                C14979k.C14980a aVar2 = C14979k.f33013a;
                obj = C14982l.m652a(th);
                C14979k.m657a(obj);
            }
            if (C14979k.m656b(obj) != null) {
                obj = dVar.getClass().getName() + '@' + getHexAddress(dVar);
            }
            str = (String) obj;
        }
        return str;
    }
}
