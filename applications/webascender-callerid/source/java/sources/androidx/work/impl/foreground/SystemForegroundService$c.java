package androidx.work.impl.foreground;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/SystemForegroundService$c.class */
class SystemForegroundService$c implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f2510f;

    /* renamed from: g */
    final /* synthetic */ SystemForegroundService f2511g;

    SystemForegroundService$c(SystemForegroundService systemForegroundService, int i) {
        this.f2511g = systemForegroundService;
        this.f2510f = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2511g.j.cancel(this.f2510f);
    }
}
