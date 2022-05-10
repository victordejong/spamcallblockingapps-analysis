package p530d.p541c.p569y;

import io.reactivex.internal.util.ExceptionHelper;
/* renamed from: d.c.y.a */
/* loaded from: classes2-dex2jar.jar:d/c/y/a.class */
public final class C9863a {
    /* renamed from: a */
    public static RuntimeException m1823a(Throwable th) {
        throw ExceptionHelper.m222b(th);
    }

    /* renamed from: b */
    public static void m1822b(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
