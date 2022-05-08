package androidx.media;

import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi21.class */
class MediaBrowserServiceCompatApi21 {

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi21$BrowserRoot.class */
    static class BrowserRoot {

        /* renamed from: a */
        final String f4292a;

        /* renamed from: b */
        final Bundle f4293b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public BrowserRoot(String str, Bundle bundle) {
            this.f4292a = str;
            this.f4293b = bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor.class */
    static class MediaBrowserServiceAdaptor extends MediaBrowserService {

        /* renamed from: f */
        final ServiceCompatProxy f4294f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MediaBrowserServiceAdaptor(Context context, ServiceCompatProxy serviceCompatProxy) {
            attachBaseContext(context);
            this.f4294f = serviceCompatProxy;
        }

        @Override // android.service.media.MediaBrowserService
        public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            MediaBrowserService.BrowserRoot browserRoot = null;
            BrowserRoot f = this.f4294f.mo17990f(str, i, bundle == null ? null : new Bundle(bundle));
            if (f != null) {
                browserRoot = new MediaBrowserService.BrowserRoot(f.f4292a, f.f4293b);
            }
            return browserRoot;
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
            this.f4294f.mo17991c(str, new ResultWrapper<>(result));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi21$ResultWrapper.class */
    static class ResultWrapper<T> {

        /* renamed from: a */
        MediaBrowserService.Result f4295a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ResultWrapper(MediaBrowserService.Result result) {
            this.f4295a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m17993a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void m17992b(T t) {
            if (t instanceof List) {
                this.f4295a.sendResult(m17993a((List) t));
            } else if (t instanceof Parcel) {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f4295a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            } else {
                this.f4295a.sendResult(null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy.class */
    public interface ServiceCompatProxy {
        /* renamed from: c */
        void mo17991c(String str, ResultWrapper<List<Parcel>> resultWrapper);

        /* renamed from: f */
        BrowserRoot mo17990f(String str, int i, Bundle bundle);
    }

    private MediaBrowserServiceCompatApi21() {
    }

    /* renamed from: a */
    public static Object m17997a(Context context, ServiceCompatProxy serviceCompatProxy) {
        return new MediaBrowserServiceAdaptor(context, serviceCompatProxy);
    }

    /* renamed from: b */
    public static IBinder m17996b(Object obj, Intent intent) {
        return ((MediaBrowserService) obj).onBind(intent);
    }

    /* renamed from: c */
    public static void m17995c(Object obj) {
        ((MediaBrowserService) obj).onCreate();
    }

    /* renamed from: d */
    public static void m17994d(Object obj, Object obj2) {
        ((MediaBrowserService) obj).setSessionToken((MediaSession.Token) obj2);
    }
}
