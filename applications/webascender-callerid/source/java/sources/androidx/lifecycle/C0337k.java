package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
class C0337k {

    /* renamed from: a */
    private static AtomicBoolean f1712a = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m5431a(Context context) {
        if (f1712a.getAndSet(true)) {
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
    }
}
