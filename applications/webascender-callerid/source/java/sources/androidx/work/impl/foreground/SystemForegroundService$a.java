package androidx.work.impl.foreground;

import android.app.Notification;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$a.class */
class SystemForegroundService$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f2503f;

    /* renamed from: g */
    final /* synthetic */ Notification f2504g;

    /* renamed from: h */
    final /* synthetic */ int f2505h;

    /* renamed from: i */
    final /* synthetic */ SystemForegroundService f2506i;

    SystemForegroundService$a(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        this.f2506i = systemForegroundService;
        this.f2503f = i;
        this.f2504g = notification;
        this.f2505h = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2506i.startForeground(this.f2503f, this.f2504g, this.f2505h);
        } else {
            this.f2506i.startForeground(this.f2503f, this.f2504g);
        }
    }
}
