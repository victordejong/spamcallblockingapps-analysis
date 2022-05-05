package androidx.media.session;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.RemoteException;
import android.support.p014v4.media.MediaBrowserCompat;
import android.support.p014v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver.class */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: androidx.media.session.MediaButtonReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/session/MediaButtonReceiver$a.class */
    private static final class C0979a extends MediaBrowserCompat.C0160b {

        /* renamed from: c */
        private final Context f4013c;

        /* renamed from: d */
        private final Intent f4014d;

        /* renamed from: e */
        private final BroadcastReceiver.PendingResult f4015e;

        /* renamed from: f */
        private MediaBrowserCompat f4016f;

        C0979a(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.f4013c = context;
            this.f4014d = intent;
            this.f4015e = pendingResult;
        }

        /* renamed from: d */
        private void m7519d() {
            this.f4016f.m10115b();
            this.f4015e.finish();
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.C0160b
        /* renamed from: a */
        public final void mo7523a() {
            try {
                new MediaControllerCompat(this.f4013c, this.f4016f.m10114c()).m10071a((KeyEvent) this.f4014d.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            } catch (RemoteException e) {
                Log.e("MediaButtonReceiver", "Failed to create a media controller", e);
            }
            m7519d();
        }

        /* renamed from: a */
        final void m7522a(MediaBrowserCompat mediaBrowserCompat) {
            this.f4016f = mediaBrowserCompat;
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.C0160b
        /* renamed from: b */
        public final void mo7521b() {
            m7519d();
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.C0160b
        /* renamed from: c */
        public final void mo7520c() {
            m7519d();
        }
    }

    /* renamed from: a */
    private static ComponentName m7524a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ResolveInfo resolveInfo = queryIntentServices.get(0);
            return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) || !intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            Log.d("MediaButtonReceiver", "Ignore unsupported intent: ".concat(String.valueOf(intent)));
            return;
        }
        ComponentName a = m7524a(context, "android.intent.action.MEDIA_BUTTON");
        if (a != null) {
            intent.setComponent(a);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        } else {
            ComponentName a2 = m7524a(context, "android.media.browse.MediaBrowserService");
            if (a2 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                C0979a aVar = new C0979a(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a2, aVar);
                aVar.m7522a(mediaBrowserCompat);
                mediaBrowserCompat.m10116a();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
    }
}
