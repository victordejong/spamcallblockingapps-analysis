package androidx.work.impl.foreground;

import android.app.Notification;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$b.class */
class SystemForegroundService$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f2507f;

    /* renamed from: g */
    final /* synthetic */ Notification f2508g;

    /* renamed from: h */
    final /* synthetic */ SystemForegroundService f2509h;

    SystemForegroundService$b(SystemForegroundService systemForegroundService, int i, Notification notification) {
        this.f2509h = systemForegroundService;
        this.f2507f = i;
        this.f2508g = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2509h.j.notify(this.f2507f, this.f2508g);
    }
}
