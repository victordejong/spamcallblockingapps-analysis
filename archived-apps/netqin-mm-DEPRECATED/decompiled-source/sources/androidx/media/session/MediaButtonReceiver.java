package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.p009v4.media.MediaBrowserCompat;
import android.support.p009v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: androidx.media.session.MediaButtonReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$a.class */
    public static class C0272a extends MediaBrowserCompat.C0019b {

        /* renamed from: c */
        public final Context f1507c;

        /* renamed from: d */
        public final Intent f1508d;

        /* renamed from: e */
        public final BroadcastReceiver.PendingResult f1509e;

        /* renamed from: f */
        public MediaBrowserCompat f1510f;

        public C0272a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f1507c = context;
            this.f1508d = intent;
            this.f1509e = pendingResult;
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b
        /* renamed from: a */
        public void mo38246a() {
            try {
                new MediaControllerCompat(this.f1507c, this.f1510f.m39331c()).m39276a((KeyEvent) this.f1508d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException e) {
                Log.e("MediaButtonReceiver", "Failed to create a media controller", e);
            }
            m38242d();
        }

        /* renamed from: a */
        public void m38245a(MediaBrowserCompat mediaBrowserCompat) {
            this.f1510f = mediaBrowserCompat;
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b
        /* renamed from: b */
        public void mo38244b() {
            m38242d();
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b
        /* renamed from: c */
        public void mo38243c() {
            m38242d();
        }

        /* renamed from: d */
        public final void m38242d() {
            this.f1510f.m39332b();
            this.f1509e.finish();
        }
    }

    /* renamed from: a */
    public static ComponentName m38247a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    /* renamed from: a */
    public static void m38248a(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d("MediaButtonReceiver", "Ignore unsupported intent: " + intent);
            return;
        }
        ComponentName a = m38247a(context, "android.intent.action.MEDIA_BUTTON");
        if (a != null) {
            intent.setComponent(a);
            m38248a(context, intent);
            return;
        }
        ComponentName a2 = m38247a(context, "android.media.browse.MediaBrowserService");
        if (a2 != null) {
            BroadcastReceiver.PendingResult goAsync = goAsync();
            Context applicationContext = context.getApplicationContext();
            C0272a aVar = new C0272a(applicationContext, intent, goAsync);
            MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a2, aVar, null);
            aVar.m38245a(mediaBrowserCompat);
            mediaBrowserCompat.m39333a();
            return;
        }
        throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
    }
}
