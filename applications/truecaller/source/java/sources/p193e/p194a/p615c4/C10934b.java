package p193e.p194a.p615c4;

import android.content.res.Resources;
import com.truecaller.log.UnmutedException;
import s1.z.c.l;
/* renamed from: e.a.c4.b */
/* loaded from: classes10-dex2jar.jar:e/a/c4/b.class */
public final class C10934b extends AbstractC10935c {

    /* renamed from: a */
    public static final C10934b f32448a = new C10934b();

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: e */
    public boolean mo11316e(Throwable th) {
        l.e(th, "e");
        boolean z = false;
        if ((th instanceof Error) || (th instanceof UnmutedException) || (th instanceof SecurityException) || (th instanceof IndexOutOfBoundsException) || AbstractC10935c.m25490a(this, th, Resources.NotFoundException.class)) {
            z = true;
        }
        return z;
    }
}
