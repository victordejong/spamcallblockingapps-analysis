package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.exoplayer2.scheduler.Requirements;
import java.util.HashMap;
import p131c.p161d.p170b.p188c.p189a1.AbstractC2690c;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2902t;
import p131c.p161d.p170b.p188c.p223z0.C3217b;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService.class */
public abstract class DownloadService extends Service {

    /* renamed from: i */
    public static final HashMap<Class<? extends DownloadService>, C7167b> f22239i = new HashMap<>();

    /* renamed from: a */
    public final C7168c f22240a;

    /* renamed from: b */
    public final String f22241b;

    /* renamed from: c */
    public final int f22242c;

    /* renamed from: d */
    public final int f22243d;

    /* renamed from: e */
    public C3217b f22244e;

    /* renamed from: f */
    public int f22245f;

    /* renamed from: g */
    public boolean f22246g;

    /* renamed from: h */
    public boolean f22247h;

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$b.class */
    public static final class C7167b implements C3217b.AbstractC3219b {

        /* renamed from: a */
        public final Context f22248a;

        /* renamed from: b */
        public final C3217b f22249b;

        /* renamed from: c */
        public final AbstractC2690c f22250c;

        /* renamed from: d */
        public final Class<? extends DownloadService> f22251d;

        /* renamed from: e */
        public DownloadService f22252e;

        public C7167b(Context context, C3217b bVar, AbstractC2690c cVar, Class<? extends DownloadService> cls) {
            this.f22248a = context;
            this.f22249b = bVar;
            this.f22250c = cVar;
            this.f22251d = cls;
            bVar.m27318a(this);
            if (cVar != null) {
                Requirements a = bVar.m27320a();
                m18501a(cVar, !a.m18491a(context), a);
            }
        }

        /* renamed from: a */
        public final void m18501a(AbstractC2690c cVar, boolean z, Requirements requirements) {
            if (!z) {
                cVar.cancel();
            } else if (!cVar.m29283a(requirements, this.f22248a.getPackageName(), "com.google.android.exoplayer.downloadService.action.RESTART")) {
                C2894o.m28597b("DownloadService", "Scheduling downloads failed.");
            }
        }

        @Override // p131c.p161d.p170b.p188c.p223z0.C3217b.AbstractC3219b
        /* renamed from: a */
        public void mo18500a(C3217b bVar, Requirements requirements, int i) {
            boolean z = i == 0;
            if (this.f22252e == null && z) {
                try {
                    this.f22248a.startService(DownloadService.m18503b(this.f22248a, this.f22251d, "com.google.android.exoplayer.downloadService.action.INIT"));
                } catch (IllegalStateException e) {
                    return;
                }
            }
            AbstractC2690c cVar = this.f22250c;
            if (cVar != null) {
                m18501a(cVar, true ^ z, requirements);
            }
        }

        /* renamed from: a */
        public void m18498a(DownloadService downloadService) {
            C2877e.m28731b(this.f22252e == null);
            this.f22252e = downloadService;
        }

        /* renamed from: a */
        public void m18497a(DownloadService downloadService, boolean z) {
            C2877e.m28731b(this.f22252e == downloadService);
            this.f22252e = null;
            AbstractC2690c cVar = this.f22250c;
            if (cVar != null && z) {
                cVar.cancel();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$c.class */
    public final class C7168c {
        /* renamed from: a */
        public void m18496a() {
            throw null;
        }
    }

    /* renamed from: b */
    public static Intent m18503b(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    /* renamed from: a */
    public abstract C3217b m18506a();

    /* renamed from: b */
    public abstract AbstractC2690c m18504b();

    /* renamed from: c */
    public final void m18502c() {
        C7168c cVar = this.f22240a;
        if (cVar != null) {
            cVar.m18496a();
            throw null;
        } else if (C2885h0.f10477a >= 28 || !this.f22247h) {
            stopSelfResult(this.f22245f);
        } else {
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f22241b;
        if (str != null) {
            C2902t.m28567a(this, str, this.f22242c, this.f22243d, 2);
        }
        C7167b bVar = f22239i.get(DownloadService.class);
        C7167b bVar2 = bVar;
        if (bVar == null) {
            C3217b a = m18506a();
            a.m27309f();
            bVar2 = new C7167b(getApplicationContext(), a, m18504b(), DownloadService.class);
            f22239i.put(DownloadService.class, bVar2);
        }
        this.f22244e = bVar2.f22249b;
        bVar2.m18498a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        C7167b bVar = f22239i.get(DownloadService.class);
        C2877e.m28737a(bVar);
        C7167b bVar2 = bVar;
        bVar2.m18497a(this, !bVar2.f22249b.m27312c());
        C7168c cVar = this.f22240a;
        if (cVar != null) {
            cVar.m18496a();
            throw null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        this.f22245f = i2;
        this.f22247h = false;
        String str2 = null;
        if (intent != null) {
            str2 = intent.getAction();
            this.f22246g |= intent.getBooleanExtra("foreground", false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(str2);
            str = intent.getStringExtra(AppLovinEventParameters.CONTENT_IDENTIFIER);
        } else {
            str = null;
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "com.google.android.exoplayer.downloadService.action.INIT";
        }
        C3217b bVar = this.f22244e;
        C2877e.m28737a(bVar);
        C3217b bVar2 = bVar;
        char c = 65535;
        switch (str3.hashCode()) {
            case -1931239035:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD")) {
                    c = 2;
                    break;
                }
                break;
            case -932047176:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS")) {
                    c = 5;
                    break;
                }
                break;
            case -871181424:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.RESTART")) {
                    c = 1;
                    break;
                }
                break;
            case -650547439:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS")) {
                    c = 4;
                    break;
                }
                break;
            case -119057172:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS")) {
                    c = '\b';
                    break;
                }
                break;
            case 191112771:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS")) {
                    c = 6;
                    break;
                }
                break;
            case 671523141:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.SET_STOP_REASON")) {
                    c = 7;
                    break;
                }
                break;
            case 1015676687:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.INIT")) {
                    c = 0;
                    break;
                }
                break;
            case 1547520644:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
                break;
            case 2:
                DownloadRequest downloadRequest = (DownloadRequest) intent.getParcelableExtra("download_request");
                if (downloadRequest != null) {
                    bVar2.m27317a(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    C2894o.m28597b("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
            case 3:
                if (str != null) {
                    bVar2.m27315a(str);
                    break;
                } else {
                    C2894o.m28597b("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
            case 4:
                bVar2.m27310e();
                break;
            case 5:
                bVar2.m27309f();
                break;
            case 6:
                bVar2.m27311d();
                break;
            case 7:
                if (intent.hasExtra("stop_reason")) {
                    bVar2.m27314a(str, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    C2894o.m28597b("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                }
            case '\b':
                Requirements requirements = (Requirements) intent.getParcelableExtra("requirements");
                if (requirements != null) {
                    bVar2.m27316a(requirements);
                    break;
                } else {
                    C2894o.m28597b("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
            default:
                C2894o.m28597b("DownloadService", "Ignored unrecognized action: " + str3);
                break;
        }
        if (!bVar2.m27313b()) {
            return 1;
        }
        m18502c();
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f22247h = true;
    }
}
