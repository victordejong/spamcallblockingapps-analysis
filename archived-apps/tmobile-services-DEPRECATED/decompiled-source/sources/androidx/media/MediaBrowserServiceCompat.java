package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.session.IMediaSession;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.core.util.Pair;
import androidx.media.MediaBrowserServiceCompatApi21;
import androidx.media.MediaBrowserServiceCompatApi23;
import androidx.media.MediaBrowserServiceCompatApi26;
import androidx.media.MediaSessionManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: k */
    static final boolean f4191k = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: f */
    private MediaBrowserServiceImpl f4192f;

    /* renamed from: h */
    ConnectionRecord f4194h;

    /* renamed from: j */
    MediaSessionCompat.Token f4196j;

    /* renamed from: g */
    final ArrayMap<IBinder, ConnectionRecord> f4193g = new ArrayMap<>();

    /* renamed from: i */
    final ServiceHandler f4195i = new ServiceHandler();

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$BrowserRoot.class */
    public static final class BrowserRoot {

        /* renamed from: a */
        private final String f4205a;

        /* renamed from: b */
        private final Bundle f4206b;

        /* renamed from: a */
        public Bundle m18027a() {
            return this.f4206b;
        }

        /* renamed from: b */
        public String m18026b() {
            return this.f4205a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$ConnectionRecord.class */
    public class ConnectionRecord implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f4207a;

        /* renamed from: b */
        public final MediaSessionManager.RemoteUserInfo f4208b;

        /* renamed from: c */
        public final Bundle f4209c;

        /* renamed from: d */
        public final ServiceCallbacks f4210d;

        /* renamed from: e */
        public final HashMap<String, List<Pair<IBinder, Bundle>>> f4211e = new HashMap<>();

        /* renamed from: f */
        public BrowserRoot f4212f;

        ConnectionRecord(String str, int i, int i2, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            this.f4207a = str;
            this.f4208b = new MediaSessionManager.RemoteUserInfo(str, i, i2);
            this.f4209c = bundle;
            this.f4210d = serviceCallbacks;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.f4195i.post(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    MediaBrowserServiceCompat.this.f4193g.remove(connectionRecord.f4210d.asBinder());
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl.class */
    interface MediaBrowserServiceImpl {
        /* renamed from: a */
        void mo18021a();

        /* renamed from: d */
        IBinder mo18019d(Intent intent);
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21.class */
    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21.ServiceCompatProxy {

        /* renamed from: a */
        final List<Bundle> f4215a = new ArrayList();

        /* renamed from: b */
        Object f4216b;

        /* renamed from: c */
        Messenger f4217c;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1.class */
        class RunnableC04101 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ MediaSessionCompat.Token f4219f;

            /* renamed from: g */
            final /* synthetic */ MediaBrowserServiceImplApi21 f4220g;

            @Override // java.lang.Runnable
            public void run() {
                if (!this.f4220g.f4215a.isEmpty()) {
                    IMediaSession extraBinder = this.f4219f.getExtraBinder();
                    if (extraBinder != null) {
                        for (Bundle bundle : this.f4220g.f4215a) {
                            BundleCompat.m19833b(bundle, "extra_session_binder", extraBinder.asBinder());
                        }
                    }
                    this.f4220g.f4215a.clear();
                }
                MediaBrowserServiceCompatApi21.m17994d(this.f4220g.f4216b, this.f4219f.getToken());
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3.class */
        class RunnableC04123 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ String f4222f;

            /* renamed from: g */
            final /* synthetic */ Bundle f4223g;

            /* renamed from: h */
            final /* synthetic */ MediaBrowserServiceImplApi21 f4224h;

            @Override // java.lang.Runnable
            public void run() {
                for (IBinder iBinder : MediaBrowserServiceCompat.this.f4193g.keySet()) {
                    this.f4224h.m18025g(MediaBrowserServiceCompat.this.f4193g.get(iBinder), this.f4222f, this.f4223g);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4.class */
        class RunnableC04134 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ MediaSessionManager.RemoteUserInfo f4225f;

            /* renamed from: g */
            final /* synthetic */ String f4226g;

            /* renamed from: h */
            final /* synthetic */ Bundle f4227h;

            /* renamed from: i */
            final /* synthetic */ MediaBrowserServiceImplApi21 f4228i;

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < MediaBrowserServiceCompat.this.f4193g.size(); i++) {
                    ConnectionRecord o = MediaBrowserServiceCompat.this.f4193g.m21005o(i);
                    if (o.f4208b.equals(this.f4225f)) {
                        this.f4228i.m18025g(o, this.f4226g, this.f4227h);
                    }
                }
            }
        }

        MediaBrowserServiceImplApi21() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: a */
        public void mo18021a() {
            Object a = MediaBrowserServiceCompatApi21.m17997a(MediaBrowserServiceCompat.this, this);
            this.f4216b = a;
            MediaBrowserServiceCompatApi21.m17995c(a);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        /* renamed from: c */
        public void mo17991c(String str, final MediaBrowserServiceCompatApi21.ResultWrapper<List<Parcel>> resultWrapper) {
            MediaBrowserServiceCompat.this.m18042f(str, new Result<List<MediaBrowserCompat.MediaItem>>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: h */
                public void mo18015d(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList;
                    if (list != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<MediaBrowserCompat.MediaItem> it = list.iterator();
                        while (true) {
                            arrayList = arrayList2;
                            if (!it.hasNext()) {
                                break;
                            }
                            MediaBrowserCompat.MediaItem next = it.next();
                            Parcel obtain = Parcel.obtain();
                            next.writeToParcel(obtain, 0);
                            arrayList2.add(obtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.m17992b(arrayList);
                }
            });
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: d */
        public IBinder mo18019d(Intent intent) {
            return MediaBrowserServiceCompatApi21.m17996b(this.f4216b, intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        /* renamed from: f */
        public MediaBrowserServiceCompatApi21.BrowserRoot mo17990f(String str, int i, Bundle bundle) {
            Bundle bundle2;
            Bundle bundle3;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
            } else {
                bundle.remove("extra_client_version");
                this.f4217c = new Messenger(MediaBrowserServiceCompat.this.f4195i);
                Bundle bundle4 = new Bundle();
                bundle4.putInt("extra_service_version", 2);
                BundleCompat.m19833b(bundle4, "extra_messenger", this.f4217c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.f4196j;
                if (token != null) {
                    IMediaSession extraBinder = token.getExtraBinder();
                    BundleCompat.m19833b(bundle4, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
                    bundle2 = bundle4;
                } else {
                    this.f4215a.add(bundle4);
                    bundle2 = bundle4;
                }
            }
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.f4194h = new ConnectionRecord(str, -1, i, bundle, null);
            BrowserRoot e = MediaBrowserServiceCompat.this.m18043e(str, i, bundle);
            MediaBrowserServiceCompat.this.f4194h = null;
            if (e == null) {
                return null;
            }
            if (bundle2 == null) {
                bundle3 = e.m18027a();
            } else {
                bundle3 = bundle2;
                if (e.m18027a() != null) {
                    bundle2.putAll(e.m18027a());
                    bundle3 = bundle2;
                }
            }
            return new MediaBrowserServiceCompatApi21.BrowserRoot(e.m18026b(), bundle3);
        }

        /* renamed from: g */
        void m18025g(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.f4211e.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.m18048b(bundle, pair.f3207b)) {
                        MediaBrowserServiceCompat.this.m18035m(str, connectionRecord, pair.f3207b, bundle);
                    }
                }
            }
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23.class */
    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: a */
        public void mo18021a() {
            Object a = MediaBrowserServiceCompatApi23.m17989a(MediaBrowserServiceCompat.this, this);
            this.f4216b = a;
            MediaBrowserServiceCompatApi21.m17995c(a);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi23.ServiceCompatProxy
        /* renamed from: b */
        public void mo17988b(String str, final MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> resultWrapper) {
            MediaBrowserServiceCompat.this.m18040h(str, new Result<MediaBrowserCompat.MediaItem>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: h */
                public void mo18015d(MediaBrowserCompat.MediaItem mediaItem) {
                    if (mediaItem == null) {
                        resultWrapper.m17992b(null);
                        return;
                    }
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    resultWrapper.m17992b(obtain);
                }
            });
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26.class */
    class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi26.ServiceCompatProxy {
        MediaBrowserServiceImplApi26() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: a */
        public void mo18021a() {
            Object a = MediaBrowserServiceCompatApi26.m17987a(MediaBrowserServiceCompat.this, this);
            this.f4216b = a;
            MediaBrowserServiceCompatApi21.m17995c(a);
        }

        @Override // androidx.media.MediaBrowserServiceCompatApi26.ServiceCompatProxy
        /* renamed from: e */
        public void mo17984e(String str, final MediaBrowserServiceCompatApi26.ResultWrapper resultWrapper, Bundle bundle) {
            MediaBrowserServiceCompat.this.m18041g(str, new Result<List<MediaBrowserCompat.MediaItem>>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: h */
                public void mo18015d(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList;
                    if (list != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<MediaBrowserCompat.MediaItem> it = list.iterator();
                        while (true) {
                            arrayList = arrayList2;
                            if (!it.hasNext()) {
                                break;
                            }
                            MediaBrowserCompat.MediaItem next = it.next();
                            Parcel obtain = Parcel.obtain();
                            next.writeToParcel(obtain, 0);
                            arrayList2.add(obtain);
                        }
                    } else {
                        arrayList = null;
                    }
                    resultWrapper.m17985b(arrayList, m18018a());
                }
            }, bundle);
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28.class */
    class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
        MediaBrowserServiceImplApi28(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase.class */
    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {

        /* renamed from: a */
        private Messenger f4233a;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1.class */
        class RunnableC04161 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ MediaSessionCompat.Token f4235f;

            /* renamed from: g */
            final /* synthetic */ MediaBrowserServiceImplBase f4236g;

            @Override // java.lang.Runnable
            public void run() {
                Iterator<ConnectionRecord> it = MediaBrowserServiceCompat.this.f4193g.values().iterator();
                while (it.hasNext()) {
                    ConnectionRecord next = it.next();
                    try {
                        next.f4210d.mo18000c(next.f4212f.m18026b(), this.f4235f, next.f4212f.m18027a());
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "Connection for " + next.f4207a + " is no longer valid.");
                        it.remove();
                    }
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2.class */
        class RunnableC04172 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ String f4237f;

            /* renamed from: g */
            final /* synthetic */ Bundle f4238g;

            /* renamed from: h */
            final /* synthetic */ MediaBrowserServiceImplBase f4239h;

            @Override // java.lang.Runnable
            public void run() {
                for (IBinder iBinder : MediaBrowserServiceCompat.this.f4193g.keySet()) {
                    this.f4239h.m18020b(MediaBrowserServiceCompat.this.f4193g.get(iBinder), this.f4237f, this.f4238g);
                }
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3 */
        /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3.class */
        class RunnableC04183 implements Runnable {

            /* renamed from: f */
            final /* synthetic */ MediaSessionManager.RemoteUserInfo f4240f;

            /* renamed from: g */
            final /* synthetic */ String f4241g;

            /* renamed from: h */
            final /* synthetic */ Bundle f4242h;

            /* renamed from: i */
            final /* synthetic */ MediaBrowserServiceImplBase f4243i;

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < MediaBrowserServiceCompat.this.f4193g.size(); i++) {
                    ConnectionRecord o = MediaBrowserServiceCompat.this.f4193g.m21005o(i);
                    if (o.f4208b.equals(this.f4240f)) {
                        this.f4243i.m18020b(o, this.f4241g, this.f4242h);
                        return;
                    }
                }
            }
        }

        MediaBrowserServiceImplBase() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: a */
        public void mo18021a() {
            this.f4233a = new Messenger(MediaBrowserServiceCompat.this.f4195i);
        }

        /* renamed from: b */
        void m18020b(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.f4211e.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.m18048b(bundle, pair.f3207b)) {
                        MediaBrowserServiceCompat.this.m18035m(str, connectionRecord, pair.f3207b, bundle);
                    }
                }
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        /* renamed from: d */
        public IBinder mo18019d(Intent intent) {
            if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
                return this.f4233a.getBinder();
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$Result.class */
    public static class Result<T> {

        /* renamed from: a */
        private final Object f4244a;

        /* renamed from: b */
        private boolean f4245b;

        /* renamed from: c */
        private boolean f4246c;

        /* renamed from: d */
        private boolean f4247d;

        /* renamed from: e */
        private int f4248e;

        Result(Object obj) {
            this.f4244a = obj;
        }

        /* renamed from: a */
        int m18018a() {
            return this.f4248e;
        }

        /* renamed from: b */
        boolean m18017b() {
            return this.f4245b || this.f4246c || this.f4247d;
        }

        /* renamed from: c */
        void mo18016c(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f4244a);
        }

        /* renamed from: d */
        void mo18015d(T t) {
        }

        /* renamed from: e */
        public void m18014e(Bundle bundle) {
            if (this.f4246c || this.f4247d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f4244a);
            }
            this.f4247d = true;
            mo18016c(bundle);
        }

        /* renamed from: f */
        public void m18013f(T t) {
            if (this.f4246c || this.f4247d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f4244a);
            }
            this.f4246c = true;
            mo18015d(t);
        }

        /* renamed from: g */
        void m18012g(int i) {
            this.f4248e = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$ServiceBinderImpl.class */
    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        /* renamed from: a */
        public void m18011a(final String str, final IBinder iBinder, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f4193g.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                        return;
                    }
                    MediaBrowserServiceCompat.this.m18047a(str, connectionRecord, iBinder, bundle);
                }
            });
        }

        /* renamed from: b */
        public void m18010b(final String str, final int i, final int i2, final Bundle bundle, final ServiceCallbacks serviceCallbacks) {
            if (MediaBrowserServiceCompat.this.m18045c(str, i2)) {
                MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder asBinder = serviceCallbacks.asBinder();
                        MediaBrowserServiceCompat.this.f4193g.remove(asBinder);
                        ConnectionRecord connectionRecord = new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat.f4194h = connectionRecord;
                        BrowserRoot e = mediaBrowserServiceCompat.m18043e(str, i2, bundle);
                        connectionRecord.f4212f = e;
                        MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                        mediaBrowserServiceCompat2.f4194h = null;
                        if (e == null) {
                            Log.i("MBServiceCompat", "No root for client " + str + " from service " + RunnableC04191.class.getName());
                            try {
                                serviceCallbacks.mo18001b();
                            } catch (RemoteException e2) {
                                Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                            }
                        } else {
                            try {
                                mediaBrowserServiceCompat2.f4193g.put(asBinder, connectionRecord);
                                asBinder.linkToDeath(connectionRecord, 0);
                                if (MediaBrowserServiceCompat.this.f4196j != null) {
                                    serviceCallbacks.mo18000c(connectionRecord.f4212f.m18026b(), MediaBrowserServiceCompat.this.f4196j, connectionRecord.f4212f.m18027a());
                                }
                            } catch (RemoteException e3) {
                                Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + str);
                                MediaBrowserServiceCompat.this.f4193g.remove(asBinder);
                            }
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }

        /* renamed from: c */
        public void m18009c(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.f4193g.remove(serviceCallbacks.asBinder());
                    if (remove != null) {
                        remove.f4210d.asBinder().unlinkToDeath(remove, 0);
                    }
                }
            });
        }

        /* renamed from: d */
        public void m18008d(final String str, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f4193g.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                            return;
                        }
                        MediaBrowserServiceCompat.this.m18034n(str, connectionRecord, resultReceiver);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m18007e(final ServiceCallbacks serviceCallbacks, final String str, final int i, final int i2, final Bundle bundle) {
            MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.f4193g.remove(asBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                    MediaBrowserServiceCompat.this.f4193g.put(asBinder, connectionRecord);
                    try {
                        asBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "IBinder is already dead.");
                    }
                }
            });
        }

        /* renamed from: f */
        public void m18006f(final String str, final IBinder iBinder, final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f4193g.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + str);
                    } else if (!MediaBrowserServiceCompat.this.m18032p(str, connectionRecord, iBinder)) {
                        Log.w("MBServiceCompat", "removeSubscription called for " + str + " which is not subscribed");
                    }
                }
            });
        }

        /* renamed from: g */
        public void m18005g(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.8
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f4193g.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                            return;
                        }
                        MediaBrowserServiceCompat.this.m18033o(str, bundle, connectionRecord, resultReceiver);
                    }
                });
            }
        }

        /* renamed from: h */
        public void m18004h(final String str, final Bundle bundle, final ResultReceiver resultReceiver, final ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.f4193g.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                            return;
                        }
                        MediaBrowserServiceCompat.this.m18036l(str, bundle, connectionRecord, resultReceiver);
                    }
                });
            }
        }

        /* renamed from: i */
        public void m18003i(final ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.f4195i.m17998a(new Runnable() { // from class: androidx.media.MediaBrowserServiceCompat.ServiceBinderImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.f4193g.remove(asBinder);
                    if (remove != null) {
                        asBinder.unlinkToDeath(remove, 0);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$ServiceCallbacks.class */
    public interface ServiceCallbacks {
        /* renamed from: a */
        void mo18002a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;

        IBinder asBinder();

        /* renamed from: b */
        void mo18001b() throws RemoteException;

        /* renamed from: c */
        void mo18000c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$ServiceCallbacksCompat.class */
    private static class ServiceCallbacksCompat implements ServiceCallbacks {

        /* renamed from: a */
        final Messenger f4289a;

        ServiceCallbacksCompat(Messenger messenger) {
            this.f4289a = messenger;
        }

        /* renamed from: d */
        private void m17999d(int i, Bundle bundle) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f4289a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        /* renamed from: a */
        public void mo18002a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            m17999d(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.f4289a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        /* renamed from: b */
        public void mo18001b() throws RemoteException {
            m17999d(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.ServiceCallbacks
        /* renamed from: c */
        public void mo18000c(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 2);
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putParcelable("data_media_session_token", token);
            bundle3.putBundle("data_root_hints", bundle2);
            m17999d(1, bundle3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$ServiceHandler.class */
    public final class ServiceHandler extends Handler {

        /* renamed from: a */
        private final ServiceBinderImpl f4290a;

        ServiceHandler() {
            this.f4290a = new ServiceBinderImpl();
        }

        /* renamed from: a */
        public void m17998a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.f4290a.m18010b(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 2:
                    this.f4290a.m18009c(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.f4290a.m18011a(data.getString("data_media_item_id"), BundleCompat.m19834a(data, "data_callback_token"), bundle2, new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 4:
                    this.f4290a.m18006f(data.getString("data_media_item_id"), BundleCompat.m19834a(data, "data_callback_token"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 5:
                    this.f4290a.m18008d(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.f4290a.m18007e(new ServiceCallbacksCompat(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f4290a.m18003i(new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.f4290a.m18005g(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.f4290a.m18004h(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new ServiceCallbacksCompat(message.replyTo));
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    /* renamed from: a */
    void m18047a(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> list = connectionRecord.f4211e.get(str);
        List<Pair<IBinder, Bundle>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : list2) {
            if (iBinder == pair.f3206a && MediaBrowserCompatUtils.m18049a(bundle, pair.f3207b)) {
                return;
            }
        }
        list2.add(new Pair<>(iBinder, bundle));
        connectionRecord.f4211e.put(str, list2);
        m18035m(str, connectionRecord, bundle, null);
        m18038j(str, bundle);
    }

    /* renamed from: b */
    List<MediaBrowserCompat.MediaItem> m18046b(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i == -1 && i2 == -1) {
            return list;
        }
        int i3 = i2 * i;
        int i4 = i3 + i2;
        if (i < 0 || i2 < 1 || i3 >= list.size()) {
            return Collections.emptyList();
        }
        int i5 = i4;
        if (i4 > list.size()) {
            i5 = list.size();
        }
        return list.subList(i3, i5);
    }

    /* renamed from: c */
    boolean m18045c(String str, int i) {
        if (str == null) {
            return false;
        }
        String[] packagesForUid = getPackageManager().getPackagesForUid(i);
        for (String str2 : packagesForUid) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public void m18044d(@NonNull String str, Bundle bundle, @NonNull Result<Bundle> result) {
        result.m18014e(null);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Nullable
    /* renamed from: e */
    public abstract BrowserRoot m18043e(@NonNull String str, int i, @Nullable Bundle bundle);

    /* renamed from: f */
    public abstract void m18042f(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    /* renamed from: g */
    public void m18041g(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle bundle) {
        result.m18012g(1);
        m18042f(str, result);
    }

    /* renamed from: h */
    public void m18040h(String str, @NonNull Result<MediaBrowserCompat.MediaItem> result) {
        result.m18012g(2);
        result.m18013f(null);
    }

    /* renamed from: i */
    public void m18039i(@NonNull String str, Bundle bundle, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.m18012g(4);
        result.m18013f(null);
    }

    @RestrictTo
    /* renamed from: j */
    public void m18038j(String str, Bundle bundle) {
    }

    @RestrictTo
    /* renamed from: k */
    public void m18037k(String str) {
    }

    /* renamed from: l */
    void m18036l(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<Bundle> result = new Result<Bundle>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.4
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            /* renamed from: c */
            void mo18016c(Bundle bundle2) {
                resultReceiver.send(-1, bundle2);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: h */
            public void mo18015d(Bundle bundle2) {
                resultReceiver.send(0, bundle2);
            }
        };
        m18044d(str, bundle, result);
        if (!result.m18017b()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
        }
    }

    /* renamed from: m */
    void m18035m(final String str, final ConnectionRecord connectionRecord, final Bundle bundle, final Bundle bundle2) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: h */
            public void mo18015d(List<MediaBrowserCompat.MediaItem> list) {
                if (MediaBrowserServiceCompat.this.f4193g.get(connectionRecord.f4210d.asBinder()) == connectionRecord) {
                    List<MediaBrowserCompat.MediaItem> list2 = list;
                    if ((m18018a() & 1) != 0) {
                        list2 = MediaBrowserServiceCompat.this.m18046b(list, bundle);
                    }
                    try {
                        connectionRecord.f4210d.mo18002a(str, list2, bundle, bundle2);
                    } catch (RemoteException e) {
                        Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str + " package=" + connectionRecord.f4207a);
                    }
                } else if (MediaBrowserServiceCompat.f4191k) {
                    Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connectionRecord.f4207a + " id=" + str);
                }
            }
        };
        if (bundle == null) {
            m18042f(str, result);
        } else {
            m18041g(str, result, bundle);
        }
        if (!result.m18017b()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord.f4207a + " id=" + str);
        }
    }

    /* renamed from: n */
    void m18034n(String str, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: h */
            public void mo18015d(MediaBrowserCompat.MediaItem mediaItem) {
                if ((m18018a() & 2) != 0) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("media_item", mediaItem);
                resultReceiver.send(0, bundle);
            }
        };
        m18040h(str, result);
        if (!result.m18017b()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
        }
    }

    /* renamed from: o */
    void m18033o(String str, Bundle bundle, ConnectionRecord connectionRecord, final ResultReceiver resultReceiver) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(this, str) { // from class: androidx.media.MediaBrowserServiceCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: h */
            public void mo18015d(List<MediaBrowserCompat.MediaItem> list) {
                if ((m18018a() & 4) != 0 || list == null) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                resultReceiver.send(0, bundle2);
            }
        };
        m18039i(str, bundle, result);
        if (!result.m18017b()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4192f.mo18019d(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f4192f = new MediaBrowserServiceImplApi28(this);
        } else if (i >= 26) {
            this.f4192f = new MediaBrowserServiceImplApi26();
        } else if (i >= 23) {
            this.f4192f = new MediaBrowserServiceImplApi23();
        } else if (i >= 21) {
            this.f4192f = new MediaBrowserServiceImplApi21();
        } else {
            this.f4192f = new MediaBrowserServiceImplBase();
        }
        this.f4192f.mo18021a();
    }

    /* renamed from: p */
    boolean m18032p(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (iBinder == null) {
                if (connectionRecord.f4211e.remove(str) == null) {
                    z = false;
                }
                return z;
            }
            List<Pair<IBinder, Bundle>> list = connectionRecord.f4211e.get(str);
            if (list != null) {
                Iterator<Pair<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f3206a) {
                        it.remove();
                        z3 = true;
                    }
                }
                z2 = z3;
                if (list.size() == 0) {
                    connectionRecord.f4211e.remove(str);
                    z2 = z3;
                }
            }
            return z2;
        } finally {
            m18037k(str);
        }
    }
}
