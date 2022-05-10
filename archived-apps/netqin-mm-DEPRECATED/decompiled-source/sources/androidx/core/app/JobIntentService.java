package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: g */
    public static final Object f1099g = new Object();

    /* renamed from: h */
    public static final HashMap<ComponentName, AbstractC0200h> f1100h = new HashMap<>();

    /* renamed from: a */
    public AbstractC0193b f1101a;

    /* renamed from: b */
    public AbstractC0200h f1102b;

    /* renamed from: c */
    public AsyncTaskC0192a f1103c;

    /* renamed from: d */
    public boolean f1104d = false;

    /* renamed from: e */
    public boolean f1105e = false;

    /* renamed from: f */
    public final ArrayList<C0195d> f1106f;

    /* renamed from: androidx.core.app.JobIntentService$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$a.class */
    public final class AsyncTaskC0192a extends AsyncTask<Void, Void, Void> {
        public AsyncTaskC0192a() {
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                AbstractC0196e a = JobIntentService.this.m38607a();
                if (a == null) {
                    return null;
                }
                JobIntentService.this.mo3261a(a.getIntent());
                a.complete();
            }
        }

        /* renamed from: a */
        public void onCancelled(Void r3) {
            JobIntentService.this.m38600d();
        }

        /* renamed from: b */
        public void onPostExecute(Void r3) {
            JobIntentService.this.m38600d();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$b.class */
    public interface AbstractC0193b {
        /* renamed from: a */
        IBinder mo38596a();

        /* renamed from: b */
        AbstractC0196e mo38595b();
    }

    /* renamed from: androidx.core.app.JobIntentService$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$c.class */
    public static final class C0194c extends AbstractC0200h {

        /* renamed from: d */
        public final Context f1108d;

        /* renamed from: e */
        public final PowerManager.WakeLock f1109e;

        /* renamed from: f */
        public final PowerManager.WakeLock f1110f;

        /* renamed from: g */
        public boolean f1111g;

        /* renamed from: h */
        public boolean f1112h;

        public C0194c(Context context, ComponentName componentName) {
            super(componentName);
            this.f1108d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f1109e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f1110f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0200h
        /* renamed from: a */
        public void mo38594a() {
            synchronized (this) {
                if (this.f1112h) {
                    if (this.f1111g) {
                        this.f1109e.acquire(60000L);
                    }
                    this.f1112h = false;
                    this.f1110f.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0200h
        /* renamed from: a */
        public void mo38592a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f1123a);
            if (this.f1108d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f1111g) {
                        this.f1111g = true;
                        if (!this.f1112h) {
                            this.f1109e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0200h
        /* renamed from: b */
        public void mo38591b() {
            synchronized (this) {
                if (!this.f1112h) {
                    this.f1112h = true;
                    this.f1110f.acquire(600000L);
                    this.f1109e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0200h
        /* renamed from: c */
        public void mo38590c() {
            synchronized (this) {
                this.f1111g = false;
            }
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$d.class */
    public final class C0195d implements AbstractC0196e {

        /* renamed from: a */
        public final Intent f1113a;

        /* renamed from: b */
        public final int f1114b;

        public C0195d(Intent intent, int i) {
            this.f1113a = intent;
            this.f1114b = i;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0196e
        public void complete() {
            JobIntentService.this.stopSelf(this.f1114b);
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0196e
        public Intent getIntent() {
            return this.f1113a;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$e.class */
    public interface AbstractC0196e {
        void complete();

        Intent getIntent();
    }

    /* renamed from: androidx.core.app.JobIntentService$f  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f.class */
    public static final class jobJobServiceEngineC0197f extends JobServiceEngine implements AbstractC0193b {

        /* renamed from: a */
        public final JobIntentService f1116a;

        /* renamed from: b */
        public final Object f1117b = new Object();

        /* renamed from: c */
        public JobParameters f1118c;

        /* renamed from: androidx.core.app.JobIntentService$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$f$a.class */
        public final class C0198a implements AbstractC0196e {

            /* renamed from: a */
            public final JobWorkItem f1119a;

            public C0198a(JobWorkItem jobWorkItem) {
                this.f1119a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0196e
            public void complete() {
                synchronized (jobJobServiceEngineC0197f.this.f1117b) {
                    if (jobJobServiceEngineC0197f.this.f1118c != null) {
                        jobJobServiceEngineC0197f.this.f1118c.completeWork(this.f1119a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.AbstractC0196e
            public Intent getIntent() {
                return this.f1119a.getIntent();
            }
        }

        public jobJobServiceEngineC0197f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f1116a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0193b
        /* renamed from: a */
        public IBinder mo38596a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0193b
        /* renamed from: b */
        public AbstractC0196e mo38595b() {
            synchronized (this.f1117b) {
                if (this.f1118c == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.f1118c.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.f1116a.getClassLoader());
                return new C0198a(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f1118c = jobParameters;
            this.f1116a.m38603a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean b = this.f1116a.m38602b();
            synchronized (this.f1117b) {
                this.f1118c = null;
            }
            return b;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$g.class */
    public static final class C0199g extends AbstractC0200h {

        /* renamed from: d */
        public final JobInfo f1121d;

        /* renamed from: e */
        public final JobScheduler f1122e;

        public C0199g(Context context, ComponentName componentName, int i) {
            super(componentName);
            m38593a(i);
            this.f1121d = new JobInfo.Builder(i, this.f1123a).setOverrideDeadline(0L).build();
            this.f1122e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0200h
        /* renamed from: a */
        public void mo38592a(Intent intent) {
            this.f1122e.enqueue(this.f1121d, new JobWorkItem(intent));
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$h */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService$h.class */
    public static abstract class AbstractC0200h {

        /* renamed from: a */
        public final ComponentName f1123a;

        /* renamed from: b */
        public boolean f1124b;

        /* renamed from: c */
        public int f1125c;

        public AbstractC0200h(ComponentName componentName) {
            this.f1123a = componentName;
        }

        /* renamed from: a */
        public void mo38594a() {
        }

        /* renamed from: a */
        public void m38593a(int i) {
            if (!this.f1124b) {
                this.f1124b = true;
                this.f1125c = i;
            } else if (this.f1125c != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f1125c);
            }
        }

        /* renamed from: a */
        public abstract void mo38592a(Intent intent);

        /* renamed from: b */
        public void mo38591b() {
        }

        /* renamed from: c */
        public void mo38590c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1106f = null;
        } else {
            this.f1106f = new ArrayList<>();
        }
    }

    /* renamed from: a */
    public static AbstractC0200h m38605a(Context context, ComponentName componentName, boolean z, int i) {
        AbstractC0200h hVar;
        AbstractC0200h hVar2 = f1100h.get(componentName);
        AbstractC0200h hVar3 = hVar2;
        if (hVar2 == null) {
            if (Build.VERSION.SDK_INT < 26) {
                hVar = new C0194c(context, componentName);
            } else if (z) {
                hVar = new C0199g(context, componentName, i);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            f1100h.put(componentName, hVar);
            hVar3 = hVar;
        }
        return hVar3;
    }

    /* renamed from: a */
    public static void m38606a(Context context, ComponentName componentName, int i, Intent intent) {
        if (intent != null) {
            synchronized (f1099g) {
                AbstractC0200h a = m38605a(context, componentName, true, i);
                a.m38593a(i);
                a.mo38592a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }

    /* renamed from: a */
    public static void m38604a(Context context, Class<?> cls, int i, Intent intent) {
        m38606a(context, new ComponentName(context, cls), i, intent);
    }

    /* renamed from: a */
    public AbstractC0196e m38607a() {
        AbstractC0193b bVar = this.f1101a;
        if (bVar != null) {
            return bVar.mo38595b();
        }
        synchronized (this.f1106f) {
            if (this.f1106f.size() <= 0) {
                return null;
            }
            return this.f1106f.remove(0);
        }
    }

    /* renamed from: a */
    public abstract void mo3261a(Intent intent);

    /* renamed from: a */
    public void m38603a(boolean z) {
        if (this.f1103c == null) {
            this.f1103c = new AsyncTaskC0192a();
            AbstractC0200h hVar = this.f1102b;
            if (hVar != null && z) {
                hVar.mo38591b();
            }
            this.f1103c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: b */
    public boolean m38602b() {
        AsyncTaskC0192a aVar = this.f1103c;
        if (aVar != null) {
            aVar.cancel(this.f1104d);
        }
        return m38601c();
    }

    /* renamed from: c */
    public boolean m38601c() {
        return true;
    }

    /* renamed from: d */
    public void m38600d() {
        ArrayList<C0195d> arrayList = this.f1106f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1103c = null;
                if (this.f1106f != null && this.f1106f.size() > 0) {
                    m38603a(false);
                } else if (!this.f1105e) {
                    this.f1102b.mo38594a();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        AbstractC0193b bVar = this.f1101a;
        if (bVar != null) {
            return bVar.mo38596a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1101a = new jobJobServiceEngineC0197f(this);
            this.f1102b = null;
            return;
        }
        this.f1101a = null;
        this.f1102b = m38605a((Context) this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<C0195d> arrayList = this.f1106f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1105e = true;
                this.f1102b.mo38594a();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f1106f == null) {
            return 2;
        }
        this.f1102b.mo38590c();
        synchronized (this.f1106f) {
            ArrayList<C0195d> arrayList = this.f1106f;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new C0195d(intent, i2));
            m38603a(true);
        }
        return 3;
    }
}
