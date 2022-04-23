package androidx.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.p014v4.media.MediaBrowserCompat;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;
/* renamed from: androidx.media.e */
/* loaded from: classes-dex2jar.jar:androidx/media/e.class */
final class C0962e extends MediaBrowserServiceCompat.C0953c<List<MediaBrowserCompat.MediaItem>> {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.C0952b f3959a;

    /* renamed from: b */
    final /* synthetic */ String f3960b;

    /* renamed from: c */
    final /* synthetic */ Bundle f3961c;

    /* renamed from: d */
    final /* synthetic */ Bundle f3962d = null;

    /* renamed from: e */
    final /* synthetic */ MediaBrowserServiceCompat f3963e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0962e(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, MediaBrowserServiceCompat.C0952b bVar, String str, Bundle bundle) {
        super(obj);
        this.f3963e = mediaBrowserServiceCompat;
        this.f3959a = bVar;
        this.f3960b = str;
        this.f3961c = bundle;
    }

    @Override // androidx.media.MediaBrowserServiceCompat.C0953c
    /* renamed from: a */
    final /* synthetic */ void mo7526a() {
        if (this.f3963e.f3929b.get(this.f3959a.f3940f.mo7533a()) == this.f3959a) {
            if ((m7534f() & 1) != 0) {
                MediaBrowserServiceCompat.m7541b();
            }
            try {
                this.f3959a.f3940f.mo7530a(this.f3960b, null, this.f3961c, this.f3962d);
            } catch (RemoteException e) {
                Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.f3960b + " package=" + this.f3959a.f3935a);
            }
        } else if (MediaBrowserServiceCompat.f3928a) {
            Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f3959a.f3935a + " id=" + this.f3960b);
        }
    }
}
