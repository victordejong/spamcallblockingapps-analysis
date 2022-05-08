package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.l */
/* loaded from: classes-dex2jar.jar:androidx/media/l.class */
final class RunnableC0969l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3979a;

    /* renamed from: b */
    final /* synthetic */ String f3980b;

    /* renamed from: c */
    final /* synthetic */ IBinder f3981c;

    /* renamed from: d */
    final /* synthetic */ Bundle f3982d;

    /* renamed from: e */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3983e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0969l(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, IBinder iBinder, Bundle bundle) {
        this.f3983e = dVar;
        this.f3979a = eVar;
        this.f3980b = str;
        this.f3981c = iBinder;
        this.f3982d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b bVar = MediaBrowserServiceCompat.this.f3929b.get(this.f3979a.mo7533a());
        if (bVar == null) {
            Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + this.f3980b);
            return;
        }
        MediaBrowserServiceCompat.this.m7542a(this.f3980b, bVar, this.f3981c, this.f3982d);
    }
}
