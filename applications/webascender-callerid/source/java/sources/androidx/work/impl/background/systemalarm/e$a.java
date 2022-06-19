package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.work.AbstractC0541m;
import androidx.work.impl.utils.C0530j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
class e$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ e f2490f;

    e$a(e eVar) {
        this.f2490f = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVar;
        Runnable runnable;
        synchronized (this.f2490f.m) {
            e eVar2 = this.f2490f;
            eVar2.n = (Intent) eVar2.m.get(0);
        }
        Intent intent = this.f2490f.n;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f2490f.n.getIntExtra("KEY_START_ID", 0);
            AbstractC0541m m4308c = AbstractC0541m.m4308c();
            String str = e.p;
            m4308c.m4310a(str, String.format("Processing command %s, %s", this.f2490f.n, Integer.valueOf(intExtra)), new Throwable[0]);
            PowerManager.WakeLock m4331b = C0530j.m4331b(this.f2490f.f, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
            try {
                AbstractC0541m.m4308c().m4310a(str, String.format("Acquiring operation wake lock (%s) %s", action, m4331b), new Throwable[0]);
                m4331b.acquire();
                e eVar3 = this.f2490f;
                eVar3.k.p(eVar3.n, intExtra, eVar3);
                AbstractC0541m.m4308c().m4310a(str, String.format("Releasing operation wake lock (%s) %s", action, m4331b), new Throwable[0]);
                m4331b.release();
                eVar = this.f2490f;
                runnable = new Runnable(eVar) { // from class: androidx.work.impl.background.systemalarm.e$d

                    /* renamed from: f */
                    private final e f2494f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f2494f = eVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f2494f.c();
                    }
                };
            } catch (Throwable th) {
                try {
                    AbstractC0541m m4308c2 = AbstractC0541m.m4308c();
                    String str2 = e.p;
                    m4308c2.m4309b(str2, "Unexpected error in onHandleIntent", th);
                    AbstractC0541m.m4308c().m4310a(str2, String.format("Releasing operation wake lock (%s) %s", action, m4331b), new Throwable[0]);
                    m4331b.release();
                    eVar = this.f2490f;
                    runnable = new Runnable(eVar) { // from class: androidx.work.impl.background.systemalarm.e$d

                        /* renamed from: f */
                        private final e f2494f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f2494f = eVar;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.f2494f.c();
                        }
                    };
                } catch (Throwable th2) {
                    AbstractC0541m.m4308c().m4310a(e.p, String.format("Releasing operation wake lock (%s) %s", action, m4331b), new Throwable[0]);
                    m4331b.release();
                    e eVar4 = this.f2490f;
                    eVar4.k(new Runnable(eVar4) { // from class: androidx.work.impl.background.systemalarm.e$d

                        /* renamed from: f */
                        private final e f2494f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f2494f = eVar4;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.f2494f.c();
                        }
                    });
                    throw th2;
                }
            }
            eVar.k(runnable);
        }
    }
}
