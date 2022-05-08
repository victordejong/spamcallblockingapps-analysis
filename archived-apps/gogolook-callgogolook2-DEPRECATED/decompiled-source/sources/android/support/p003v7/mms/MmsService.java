package android.support.p003v7.mms;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import p065f.p066a.p068b.p069a.AbstractC4242b;
import p065f.p066a.p068b.p069a.AbstractC4246d;
import p065f.p066a.p068b.p069a.AbstractC4265p;
import p065f.p066a.p068b.p069a.C4249f;
import p065f.p066a.p068b.p069a.C4253g;
import p065f.p066a.p068b.p069a.C4255h;
import p065f.p066a.p068b.p069a.C4260m;
/* renamed from: android.support.v7.mms.MmsService */
/* loaded from: classes-dex2jar.jar:android/support/v7/mms/MmsService.class */
public class MmsService extends Service {

    /* renamed from: g */
    public static volatile int f10g = 4;

    /* renamed from: h */
    public static volatile boolean f11h = true;

    /* renamed from: i */
    public static volatile PowerManager.WakeLock f12i;

    /* renamed from: j */
    public static final Object f13j = new Object();

    /* renamed from: k */
    public static volatile AbstractC4246d f14k;

    /* renamed from: l */
    public static volatile AbstractC4242b f15l;

    /* renamed from: m */
    public static volatile AbstractC4265p f16m;

    /* renamed from: n */
    public static volatile int f17n = -1;

    /* renamed from: b */
    public int f19b;

    /* renamed from: c */
    public int f20c;

    /* renamed from: d */
    public C4260m f21d;

    /* renamed from: a */
    public ExecutorService[] f18a = new ExecutorService[2];

    /* renamed from: e */
    public final Handler f22e = new Handler();

    /* renamed from: f */
    public final Runnable f23f = new RunnableC0038a();

    /* renamed from: android.support.v7.mms.MmsService$a */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/MmsService$a.class */
    public class RunnableC0038a implements Runnable {
        public RunnableC0038a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MmsService.this.m37533d();
        }
    }

    /* renamed from: android.support.v7.mms.MmsService$b */
    /* loaded from: classes-dex2jar.jar:android/support/v7/mms/MmsService$b.class */
    public class RunnableC0039b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MmsRequest f25a;

        public RunnableC0039b(MmsRequest mmsRequest) {
            this.f25a = mmsRequest;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
            if (r7.f25a.m37558a() == false) goto L_0x004d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
            android.support.p003v7.mms.MmsService.m37527j();
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
            r7.f26b.m37550a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x0022, code lost:
            if (r7.f25a.m37558a() != false) goto L_0x004a;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
                r0 = r7
                android.support.v7.mms.MmsRequest r0 = r0.f25a     // Catch: all -> 0x0028, Exception -> 0x003f
                r1 = r7
                android.support.v7.mms.MmsService r1 = android.support.p003v7.mms.MmsService.this     // Catch: all -> 0x0028, Exception -> 0x003f
                r2 = r7
                android.support.v7.mms.MmsService r2 = android.support.p003v7.mms.MmsService.this     // Catch: all -> 0x0028, Exception -> 0x003f
                f.a.b.a.m r2 = android.support.p003v7.mms.MmsService.m37536b(r2)     // Catch: all -> 0x0028, Exception -> 0x003f
                f.a.b.a.b r3 = android.support.p003v7.mms.MmsService.m37531f()     // Catch: all -> 0x0028, Exception -> 0x003f
                f.a.b.a.d r4 = android.support.p003v7.mms.MmsService.m37530g()     // Catch: all -> 0x0028, Exception -> 0x003f
                f.a.b.a.p r5 = android.support.p003v7.mms.MmsService.m37528i()     // Catch: all -> 0x0028, Exception -> 0x003f
                r0.m37556a(r1, r2, r3, r4, r5)     // Catch: all -> 0x0028, Exception -> 0x003f
                r0 = r7
                android.support.v7.mms.MmsRequest r0 = r0.f25a
                boolean r0 = r0.m37558a()
                if (r0 == 0) goto L_0x004d
                goto L_0x004a
            L_0x0028:
                r8 = move-exception
                r0 = r7
                android.support.v7.mms.MmsRequest r0 = r0.f25a
                boolean r0 = r0.m37558a()
                if (r0 == 0) goto L_0x0036
                android.support.p003v7.mms.MmsService.m37532e()
            L_0x0036:
                r0 = r7
                android.support.v7.mms.MmsService r0 = android.support.p003v7.mms.MmsService.this
                android.support.p003v7.mms.MmsService.m37534c(r0)
                r0 = r8
                throw r0
            L_0x003f:
                r8 = move-exception
                r0 = r7
                android.support.v7.mms.MmsRequest r0 = r0.f25a
                boolean r0 = r0.m37558a()
                if (r0 == 0) goto L_0x004d
            L_0x004a:
                android.support.p003v7.mms.MmsService.m37532e()
            L_0x004d:
                r0 = r7
                android.support.v7.mms.MmsService r0 = android.support.p003v7.mms.MmsService.this
                android.support.p003v7.mms.MmsService.m37534c(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.p003v7.mms.MmsService.RunnableC0039b.run():void");
        }
    }

    /* renamed from: a */
    public static void m37549a(Context context) {
        synchronized (f13j) {
            if (f12i == null) {
                f12i = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "mmslib_wakelock");
            }
            f12i.acquire();
        }
    }

    /* renamed from: a */
    public static void m37548a(Context context, MmsRequest mmsRequest) {
        boolean z = f11h;
        mmsRequest.m37552a(z);
        Intent intent = new Intent(context, MmsService.class);
        intent.putExtra("request", mmsRequest);
        intent.putExtra("mypid", m37529h());
        if (z) {
            m37549a(context);
        }
        if (context.startService(intent) == null && z) {
            m37527j();
        }
    }

    /* renamed from: a */
    public static void m37543a(AbstractC4242b bVar) {
        f15l = bVar;
    }

    /* renamed from: a */
    public static void m37542a(AbstractC4246d dVar) {
        f14k = dVar;
    }

    /* renamed from: a */
    public static void m37541a(AbstractC4265p pVar) {
        f16m = pVar;
    }

    /* renamed from: a */
    public static void m37539a(boolean z) {
        f11h = z;
    }

    /* renamed from: a */
    public static boolean m37547a(Intent intent) {
        return intent.getIntExtra("mypid", -1) == m37529h();
    }

    /* renamed from: b */
    public static void m37537b(Context context) {
        if (f16m == null) {
            f16m = new C4255h(context);
        }
        if (f14k == null) {
            f14k = new C4253g(context);
        }
        if (f15l == null) {
            f15l = new C4249f(context);
        }
    }

    /* renamed from: f */
    public static AbstractC4242b m37531f() {
        return f15l;
    }

    /* renamed from: g */
    public static AbstractC4246d m37530g() {
        return f14k;
    }

    /* renamed from: h */
    public static int m37529h() {
        if (f17n < 0) {
            f17n = Process.myPid();
        }
        return f17n;
    }

    /* renamed from: i */
    public static AbstractC4265p m37528i() {
        return f16m;
    }

    /* renamed from: j */
    public static void m37527j() {
        synchronized (f13j) {
            if (f12i != null) {
                f12i.release();
            }
        }
    }

    /* renamed from: k */
    public static void m37526k() {
        boolean z;
        synchronized (f13j) {
            z = f12i != null && f12i.isHeld();
        }
        if (z) {
            Log.e("MmsLib", "Wake lock still held!");
        }
    }

    /* renamed from: a */
    public final ExecutorService m37546a(MmsRequest mmsRequest) {
        return mmsRequest instanceof SendRequest ? this.f18a[0] : this.f18a[1];
    }

    /* renamed from: a */
    public final void m37550a() {
        synchronized (this) {
            this.f19b--;
            if (this.f19b <= 0) {
                this.f19b = 0;
                m37538b();
            }
        }
    }

    /* renamed from: a */
    public final void m37545a(MmsRequest mmsRequest, Runnable runnable) {
        ExecutorService a = m37546a(mmsRequest);
        synchronized (this) {
            a.execute(runnable);
            this.f19b++;
        }
    }

    /* renamed from: a */
    public final void m37540a(Boolean bool) {
        if (bool != null && bool.booleanValue()) {
            m37526k();
        }
    }

    /* renamed from: b */
    public final void m37538b() {
        this.f22e.removeCallbacks(this.f23f);
        this.f22e.postDelayed(this.f23f, 2000L);
    }

    /* renamed from: c */
    public final void m37535c() {
        synchronized (this) {
            if (this.f19b == 0) {
                m37538b();
            }
        }
    }

    /* renamed from: d */
    public final void m37533d() {
        Boolean valueOf;
        synchronized (this) {
            valueOf = this.f19b == 0 ? Boolean.valueOf(stopSelfResult(this.f20c)) : null;
        }
        m37540a(valueOf);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m37537b((Context) this);
        int i = 0;
        while (true) {
            ExecutorService[] executorServiceArr = this.f18a;
            if (i < executorServiceArr.length) {
                executorServiceArr[i] = Executors.newFixedThreadPool(f10g);
                i++;
            } else {
                this.f21d = new C4260m(this);
                synchronized (this) {
                    this.f19b = 0;
                    this.f20c = -1;
                }
                return;
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        for (ExecutorService executorService : this.f18a) {
            executorService.shutdown();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this) {
            this.f20c = i2;
        }
        boolean z = false;
        if (intent != null) {
            z = false;
            if (m37547a(intent)) {
                MmsRequest mmsRequest = (MmsRequest) intent.getParcelableExtra("request");
                z = false;
                if (mmsRequest != null) {
                    try {
                        m37545a(mmsRequest, new RunnableC0039b(mmsRequest));
                        z = true;
                    } catch (RejectedExecutionException e) {
                        String str = "Executing request failed " + e;
                        mmsRequest.m37557a(this, 1, null, 0);
                        z = false;
                        if (mmsRequest.m37558a()) {
                            m37527j();
                            z = false;
                        }
                    }
                }
            }
        }
        if (z) {
            return 2;
        }
        m37535c();
        return 2;
    }
}
