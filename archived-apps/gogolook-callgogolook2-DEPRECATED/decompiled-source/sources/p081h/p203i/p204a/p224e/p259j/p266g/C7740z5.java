package p081h.p203i.p204a.p224e.p259j.p266g;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: h.i.a.e.j.g.z5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/z5.class */
public final class C7740z5 extends ContentObserver {
    public C7740z5(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C7733y5.f18090e;
        atomicBoolean.set(true);
    }
}
