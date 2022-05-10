package p012b.p076s.p116d;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionService;
import androidx.versionedparcelable.ParcelImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
import p012b.p074r.C1141c;
import p012b.p076s.p116d.AbstractC1789e;
/* renamed from: b.s.d.h */
/* loaded from: classes-dex2jar.jar:b/s/d/h.class */
public class C1793h implements MediaSessionService.AbstractC0429b {

    /* renamed from: b */
    public BinderC1794a f7222b;

    /* renamed from: c */
    public MediaSessionService f7223c;

    /* renamed from: e */
    public C1792g f7225e;

    /* renamed from: a */
    public final Object f7221a = new Object();

    /* renamed from: d */
    public Map<String, MediaSession> f7224d = new C0780a();

    /* renamed from: b.s.d.h$a */
    /* loaded from: classes-dex2jar.jar:b/s/d/h$a.class */
    public static final class BinderC1794a extends AbstractC1789e.AbstractBinderC1790a implements AutoCloseable {

        /* renamed from: a */
        public final WeakReference<C1793h> f7226a;

        /* renamed from: b */
        public final Handler f7227b;

        /* renamed from: c */
        public final C1141c f7228c;

        /* renamed from: b.s.d.h$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/d/h$a$a.class */
        public class RunnableC1795a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String f7229a;

            /* renamed from: b */
            public final /* synthetic */ int f7230b;

            /* renamed from: c */
            public final /* synthetic */ int f7231c;

            /* renamed from: d */
            public final /* synthetic */ Bundle f7232d;

            /* renamed from: e */
            public final /* synthetic */ AbstractC1783c f7233e;

            public RunnableC1795a(String str, int i, int i2, Bundle bundle, AbstractC1783c cVar) {
                this.f7229a = str;
                this.f7230b = i;
                this.f7231c = i2;
                this.f7232d = bundle;
                this.f7233e = cVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:68:0x016b  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 434
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p116d.C1793h.BinderC1794a.RunnableC1795a.run():void");
            }
        }

        public BinderC1794a(C1793h hVar) {
            this.f7226a = new WeakReference<>(hVar);
            this.f7227b = new Handler(hVar.m32083b().getMainLooper());
            this.f7228c = C1141c.m34586a(hVar.m32083b());
        }

        @Override // p012b.p076s.p116d.AbstractC1789e
        /* renamed from: a */
        public void mo32080a(AbstractC1783c cVar, ParcelImpl parcelImpl) {
            if (this.f7226a.get() == null) {
                Log.d("MSS2ImplBase", "ServiceImpl isn't available");
                return;
            }
            int callingPid = Binder.getCallingPid();
            int callingUid = Binder.getCallingUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            C1781a aVar = (C1781a) MediaParcelUtils.m38222a(parcelImpl);
            if (callingPid == 0) {
                callingPid = aVar.m32099g();
            }
            try {
                this.f7227b.post(new RunnableC1795a(parcelImpl == null ? null : aVar.m32100f(), callingPid, callingUid, parcelImpl == null ? null : aVar.m32101e(), cVar));
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            this.f7226a.clear();
            this.f7227b.removeCallbacksAndMessages(null);
        }
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    /* renamed from: a */
    public int mo32086a(Intent intent, int i, int i2) {
        if (intent == null || intent.getAction() == null) {
            return 1;
        }
        String action = intent.getAction();
        char c = 65535;
        if (action.hashCode() == 1997055314 && action.equals("android.intent.action.MEDIA_BUTTON")) {
            c = 0;
        }
        if (c != 0) {
            return 1;
        }
        MediaSessionService b = m32083b();
        if (b == null) {
            Log.wtf("MSS2ImplBase", "Service hasn't created");
        }
        MediaSession a = MediaSession.m37750a(intent.getData());
        MediaSession mediaSession = a;
        if (a == null) {
            mediaSession = b.mo37735a(new MediaSession.C0424b(new C1141c.C1143b("android.intent.action.MEDIA_BUTTON", 0, 0), false, null, null));
        }
        if (mediaSession == null) {
            Log.d("MSS2ImplBase", "Rejecting wake-up of the service from media key events.");
            return 1;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            return 1;
        }
        mediaSession.m37752C1().m39249a().m39276a(keyEvent);
        return 1;
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    /* renamed from: a */
    public List<MediaSession> mo32087a() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f7221a) {
            arrayList.addAll(this.f7224d.values());
        }
        return arrayList;
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    /* renamed from: a */
    public void mo32085a(MediaSession mediaSession) {
        MediaSession mediaSession2;
        C1792g gVar;
        synchronized (this.f7221a) {
            mediaSession2 = this.f7224d.get(mediaSession.getId());
            if (mediaSession2 == null || mediaSession2 == mediaSession) {
                this.f7224d.put(mediaSession.getId(), mediaSession);
            } else {
                throw new IllegalArgumentException("Session ID should be unique");
            }
        }
        if (mediaSession2 == null) {
            synchronized (this.f7221a) {
                gVar = this.f7225e;
            }
            gVar.m32090a(mediaSession, mediaSession.m37745z0().mo37837h());
            mediaSession.m37747g1().m37737a(gVar);
        }
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    /* renamed from: a */
    public void mo32084a(MediaSessionService mediaSessionService) {
        synchronized (this.f7221a) {
            this.f7223c = mediaSessionService;
            this.f7222b = new BinderC1794a(this);
            this.f7225e = new C1792g(mediaSessionService);
        }
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    /* renamed from: b */
    public MediaSessionService.C0428a mo32082b(MediaSession mediaSession) {
        C1792g gVar;
        synchronized (this.f7221a) {
            gVar = this.f7225e;
        }
        if (gVar != null) {
            return gVar.m32091a(mediaSession);
        }
        throw new IllegalStateException("Service hasn't created");
    }

    /* renamed from: b */
    public MediaSessionService m32083b() {
        MediaSessionService mediaSessionService;
        synchronized (this.f7221a) {
            mediaSessionService = this.f7223c;
        }
        return mediaSessionService;
    }

    /* renamed from: c */
    public IBinder m32081c() {
        BinderC1794a aVar;
        synchronized (this.f7221a) {
            if (this.f7222b != null) {
                aVar = this.f7222b;
                aVar.asBinder();
            } else {
                aVar = null;
            }
        }
        return aVar;
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    public IBinder onBind(Intent intent) {
        MediaSessionService b = m32083b();
        if (b == null) {
            Log.w("MSS2ImplBase", "Service hasn't created before onBind()");
            return null;
        }
        String action = intent.getAction();
        char c = 65535;
        int hashCode = action.hashCode();
        if (hashCode != -2044151856) {
            if (hashCode == 1665850838 && action.equals("android.media.browse.MediaBrowserService")) {
                c = 1;
            }
        } else if (action.equals("androidx.media2.session.MediaSessionService")) {
            c = 0;
        }
        if (c == 0) {
            return m32081c();
        }
        if (c != 1) {
            return null;
        }
        MediaSession a = b.mo37735a(new MediaSession.C0424b(new C1141c.C1143b("android.media.browse.MediaBrowserService", 0, 0), false, null, null));
        if (a == null) {
            Log.d("MSS2ImplBase", "Rejecting incoming connection request from legacy media browsers.");
            return null;
        }
        mo32085a(a);
        return a.m37749b();
    }

    @Override // androidx.media2.session.MediaSessionService.AbstractC0429b
    public void onDestroy() {
        synchronized (this.f7221a) {
            this.f7223c = null;
            if (this.f7222b != null) {
                this.f7222b.close();
                this.f7222b = null;
            }
        }
    }
}
