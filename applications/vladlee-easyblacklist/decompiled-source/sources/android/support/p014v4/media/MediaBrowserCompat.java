package android.support.p014v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
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
import android.support.p014v4.media.C0182f;
import android.support.p014v4.media.C0187g;
import android.support.p014v4.media.session.AbstractC0206b;
import android.support.p014v4.media.session.MediaSessionCompat;
import android.support.p014v4.p015os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0608g;
import androidx.media.C0961d;
import androidx.p026b.C0529a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: a */
    static final boolean f354a = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: b */
    private final AbstractC0164d f355b;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$CustomActionResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    private static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: d */
        private final Bundle f356d;

        /* renamed from: e */
        private final AbstractC0163c f357e;

        @Override // android.support.p014v4.p015os.ResultReceiver
        /* renamed from: a */
        protected final void mo9984a(int i, Bundle bundle) {
            if (this.f357e != null) {
                MediaSessionCompat.m10067a(bundle);
                if (i != -1 && i != 0 && i != 1) {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.f356d + ", resultData=" + bundle + ")");
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    private static class ItemReceiver extends ResultReceiver {
        @Override // android.support.p014v4.p015os.ResultReceiver
        /* renamed from: a */
        protected final void mo9984a(int i, Bundle bundle) {
            MediaSessionCompat.m10067a(bundle);
            if (i == 0 && bundle != null && bundle.containsKey("media_item")) {
                bundle.getParcelable("media_item");
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new C0181e();

        /* renamed from: a */
        private final int f358a;

        /* renamed from: b */
        private final MediaDescriptionCompat f359b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MediaItem(Parcel parcel) {
            this.f358a = parcel.readInt();
            this.f359b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        private MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.m10088a())) {
                this.f358a = i;
                this.f359b = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        /* renamed from: a */
        public static List<MediaItem> m10113a(List<?> list) {
            MediaItem mediaItem;
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object obj : list) {
                if (obj == null || Build.VERSION.SDK_INT < 21) {
                    mediaItem = null;
                } else {
                    MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                    mediaItem = new MediaItem(MediaDescriptionCompat.m10087a(mediaItem2.getDescription()), mediaItem2.getFlags());
                }
                arrayList.add(mediaItem);
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f358a + ", mDescription=" + this.f359b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f358a);
            this.f359b.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    private static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.p014v4.p015os.ResultReceiver
        /* renamed from: a */
        protected final void mo9984a(int i, Bundle bundle) {
            Parcelable[] parcelableArray;
            MediaSessionCompat.m10067a(bundle);
            if (i == 0 && bundle != null && bundle.containsKey("search_results") && (parcelableArray = bundle.getParcelableArray("search_results")) != null) {
                ArrayList arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static final class HandlerC0159a extends Handler {

        /* renamed from: a */
        private final WeakReference<AbstractC0170i> f360a;

        /* renamed from: b */
        private WeakReference<Messenger> f361b;

        HandlerC0159a(AbstractC0170i iVar) {
            this.f360a = new WeakReference<>(iVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m10112a(Messenger messenger) {
            this.f361b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f361b;
            if (weakReference != null && weakReference.get() != null && this.f360a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.m10067a(data);
                AbstractC0170i iVar = this.f360a.get();
                Messenger messenger = this.f361b.get();
                try {
                    int i = message.what;
                    if (i == 1) {
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.m10067a(bundle);
                        iVar.mo10099a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                    } else if (i == 2) {
                        iVar.mo10100a(messenger);
                    } else if (i != 3) {
                        Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.m10067a(bundle2);
                        Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                        MediaSessionCompat.m10067a(bundle3);
                        iVar.mo10098a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        iVar.mo10100a(messenger);
                    }
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class C0160b {

        /* renamed from: a */
        final Object f362a;

        /* renamed from: b */
        AbstractC0161a f363b;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        interface AbstractC0161a {
            /* renamed from: a */
            void mo10111a();

            /* renamed from: b */
            void mo10110b();
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$b.class */
        private final class C0162b implements C0182f.AbstractC0183a {
            C0162b() {
            }

            @Override // android.support.p014v4.media.C0182f.AbstractC0183a
            /* renamed from: a */
            public final void mo10076a() {
                if (C0160b.this.f363b != null) {
                    C0160b.this.f363b.mo10111a();
                }
                C0160b.this.mo7523a();
            }

            @Override // android.support.p014v4.media.C0182f.AbstractC0183a
            /* renamed from: b */
            public final void mo10075b() {
                if (C0160b.this.f363b != null) {
                    C0160b.this.f363b.mo10110b();
                }
                C0160b.this.mo7521b();
            }

            @Override // android.support.p014v4.media.C0182f.AbstractC0183a
            /* renamed from: c */
            public final void mo10074c() {
                C0160b.this.mo7520c();
            }
        }

        public C0160b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f362a = new C0182f.C0184b(new C0162b());
            } else {
                this.f362a = null;
            }
        }

        /* renamed from: a */
        public void mo7523a() {
        }

        /* renamed from: b */
        public void mo7521b() {
        }

        /* renamed from: c */
        public void mo7520c() {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0163c {
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    interface AbstractC0164d {
        /* renamed from: c */
        void mo10105c();

        /* renamed from: d */
        void mo10104d();

        /* renamed from: e */
        MediaSessionCompat.Token mo10103e();
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    static class C0165e implements C0160b.AbstractC0161a, AbstractC0164d, AbstractC0170i {

        /* renamed from: a */
        final Context f365a;

        /* renamed from: b */
        protected final Object f366b;

        /* renamed from: e */
        protected int f369e;

        /* renamed from: f */
        protected C0171j f370f;

        /* renamed from: g */
        protected Messenger f371g;

        /* renamed from: i */
        private MediaSessionCompat.Token f373i;

        /* renamed from: j */
        private Bundle f374j;

        /* renamed from: d */
        protected final HandlerC0159a f368d = new HandlerC0159a(this);

        /* renamed from: h */
        private final C0529a<String, C0172k> f372h = new C0529a<>();

        /* renamed from: c */
        protected final Bundle f367c = new Bundle();

        C0165e(Context context, ComponentName componentName, C0160b bVar) {
            this.f365a = context;
            this.f367c.putInt("extra_client_version", 1);
            bVar.f363b = this;
            this.f366b = new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) bVar.f362a, this.f367c);
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.C0160b.AbstractC0161a
        /* renamed from: a */
        public final void mo10111a() {
            Bundle extras = ((MediaBrowser) this.f366b).getExtras();
            if (extras != null) {
                this.f369e = extras.getInt("extra_service_version", 0);
                IBinder a = C0608g.m8745a(extras, "extra_messenger");
                if (a != null) {
                    this.f370f = new C0171j(a, this.f367c);
                    this.f371g = new Messenger(this.f368d);
                    this.f368d.m10112a(this.f371g);
                    try {
                        this.f370f.m10093b(this.f365a, this.f371g);
                    } catch (RemoteException e) {
                        Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                    }
                }
                AbstractC0206b a2 = AbstractC0206b.AbstractBinderC0207a.m10043a(C0608g.m8745a(extras, "extra_session_binder"));
                if (a2 != null) {
                    this.f373i = MediaSessionCompat.Token.m10061a(((MediaBrowser) this.f366b).getSessionToken(), a2);
                }
            }
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10100a(Messenger messenger) {
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10099a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10098a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f371g == messenger) {
                C0172k kVar = this.f372h.get(str);
                if (kVar == null) {
                    if (MediaBrowserCompat.f354a) {
                        Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=".concat(String.valueOf(str)));
                    }
                } else if (kVar.m10090a(bundle) == null) {
                } else {
                    if (bundle == null) {
                        if (list != null) {
                            this.f374j = bundle2;
                            this.f374j = null;
                        }
                    } else if (list != null) {
                        this.f374j = bundle2;
                        this.f374j = null;
                    }
                }
            }
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.C0160b.AbstractC0161a
        /* renamed from: b */
        public final void mo10110b() {
            this.f370f = null;
            this.f371g = null;
            this.f373i = null;
            this.f368d.m10112a(null);
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: c */
        public final void mo10105c() {
            ((MediaBrowser) this.f366b).connect();
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: d */
        public final void mo10104d() {
            Messenger messenger;
            C0171j jVar = this.f370f;
            if (!(jVar == null || (messenger = this.f371g) == null)) {
                try {
                    jVar.m10092b(messenger);
                } catch (RemoteException e) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            ((MediaBrowser) this.f366b).disconnect();
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: e */
        public final MediaSessionCompat.Token mo10103e() {
            if (this.f373i == null) {
                this.f373i = MediaSessionCompat.Token.m10062a(((MediaBrowser) this.f366b).getSessionToken());
            }
            return this.f373i;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$f.class */
    static class C0166f extends C0165e {
        C0166f(Context context, ComponentName componentName, C0160b bVar) {
            super(context, componentName, bVar);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$g.class */
    static final class C0167g extends C0166f {
        C0167g(Context context, ComponentName componentName, C0160b bVar) {
            super(context, componentName, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$h */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h.class */
    public static final class C0168h implements AbstractC0164d, AbstractC0170i {

        /* renamed from: a */
        final Context f375a;

        /* renamed from: b */
        final ComponentName f376b;

        /* renamed from: c */
        final C0160b f377c;

        /* renamed from: d */
        final Bundle f378d;

        /* renamed from: g */
        ServiceConnectionC0169a f381g;

        /* renamed from: h */
        C0171j f382h;

        /* renamed from: i */
        Messenger f383i;

        /* renamed from: k */
        private String f385k;

        /* renamed from: l */
        private MediaSessionCompat.Token f386l;

        /* renamed from: m */
        private Bundle f387m;

        /* renamed from: n */
        private Bundle f388n;

        /* renamed from: e */
        final HandlerC0159a f379e = new HandlerC0159a(this);

        /* renamed from: j */
        private final C0529a<String, C0172k> f384j = new C0529a<>();

        /* renamed from: f */
        int f380f = 1;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$h$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h$a.class */
        public final class ServiceConnectionC0169a implements ServiceConnection {
            /* JADX INFO: Access modifiers changed from: package-private */
            public ServiceConnectionC0169a() {
            }

            /* renamed from: a */
            private void m10102a(Runnable runnable) {
                if (Thread.currentThread() == C0168h.this.f379e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    C0168h.this.f379e.post(runnable);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: a */
            public final boolean m10101a(String str) {
                if (C0168h.this.f381g == this && C0168h.this.f380f != 0 && C0168h.this.f380f != 1) {
                    return true;
                }
                if (C0168h.this.f380f == 0 || C0168h.this.f380f == 1) {
                    return false;
                }
                Log.i("MediaBrowserCompat", str + " for " + C0168h.this.f376b + " with mServiceConnection=" + C0168h.this.f381g + " this=" + this);
                return false;
            }

            @Override // android.content.ServiceConnection
            public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                m10102a(new RunnableC0179c(this, componentName, iBinder));
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                m10102a(new RunnableC0180d(this, componentName));
            }
        }

        public C0168h(Context context, ComponentName componentName, C0160b bVar) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (bVar != null) {
                this.f375a = context;
                this.f376b = componentName;
                this.f377c = bVar;
                this.f378d = null;
            } else {
                throw new IllegalArgumentException("connection callback must not be null");
            }
        }

        /* renamed from: a */
        private static String m10108a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? "UNKNOWN/".concat(String.valueOf(i)) : "CONNECT_STATE_SUSPENDED" : "CONNECT_STATE_CONNECTED" : "CONNECT_STATE_CONNECTING" : "CONNECT_STATE_DISCONNECTED" : "CONNECT_STATE_DISCONNECTING";
        }

        /* renamed from: a */
        private boolean m10107a(Messenger messenger, String str) {
            int i;
            if (this.f383i == messenger && (i = this.f380f) != 0 && i != 1) {
                return true;
            }
            int i2 = this.f380f;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            Log.i("MediaBrowserCompat", str + " for " + this.f376b + " with mCallbacksMessenger=" + this.f383i + " this=" + this);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m10109a() {
            ServiceConnectionC0169a aVar = this.f381g;
            if (aVar != null) {
                this.f375a.unbindService(aVar);
            }
            this.f380f = 1;
            this.f381g = null;
            this.f382h = null;
            this.f383i = null;
            this.f379e.m10112a(null);
            this.f385k = null;
            this.f386l = null;
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10100a(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f376b);
            if (m10107a(messenger, "onConnectFailed")) {
                if (this.f380f != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m10108a(this.f380f) + "... ignoring");
                    return;
                }
                m10109a();
                this.f377c.mo7520c();
            }
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10099a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (m10107a(messenger, "onConnect")) {
                if (this.f380f != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m10108a(this.f380f) + "... ignoring");
                    return;
                }
                this.f385k = str;
                this.f386l = token;
                this.f387m = bundle;
                this.f380f = 3;
                if (MediaBrowserCompat.f354a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    m10106b();
                }
                this.f377c.mo7523a();
                try {
                    for (Map.Entry<String, C0172k> entry : this.f384j.entrySet()) {
                        String key = entry.getKey();
                        C0172k value = entry.getValue();
                        List<AbstractC0173l> b = value.m10089b();
                        List<Bundle> a = value.m10091a();
                        for (int i = 0; i < b.size(); i++) {
                            this.f382h.m10094a(key, b.get(i).f395b, a.get(i), this.f383i);
                        }
                    }
                } catch (RemoteException e) {
                    Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
                }
            }
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0170i
        /* renamed from: a */
        public final void mo10098a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (m10107a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f354a) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for " + this.f376b + " id=" + str);
                }
                C0172k kVar = this.f384j.get(str);
                if (kVar == null) {
                    if (MediaBrowserCompat.f354a) {
                        Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=".concat(String.valueOf(str)));
                    }
                } else if (kVar.m10090a(bundle) == null) {
                } else {
                    if (bundle == null) {
                        if (list != null) {
                            this.f388n = bundle2;
                            this.f388n = null;
                        }
                    } else if (list != null) {
                        this.f388n = bundle2;
                        this.f388n = null;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final void m10106b() {
            Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
            Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.f376b);
            Log.d("MediaBrowserCompat", "  mCallback=" + this.f377c);
            Log.d("MediaBrowserCompat", "  mRootHints=" + this.f378d);
            Log.d("MediaBrowserCompat", "  mState=" + m10108a(this.f380f));
            Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.f381g);
            Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.f382h);
            Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.f383i);
            Log.d("MediaBrowserCompat", "  mRootId=" + this.f385k);
            Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.f386l);
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: c */
        public final void mo10105c() {
            int i = this.f380f;
            if (i == 0 || i == 1) {
                this.f380f = 2;
                this.f379e.post(new RunnableC0177a(this));
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m10108a(this.f380f) + ")");
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: d */
        public final void mo10104d() {
            this.f380f = 0;
            this.f379e.post(new RunnableC0178b(this));
        }

        @Override // android.support.p014v4.media.MediaBrowserCompat.AbstractC0164d
        /* renamed from: e */
        public final MediaSessionCompat.Token mo10103e() {
            if (this.f380f == 3) {
                return this.f386l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f380f + ")");
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i.class */
    interface AbstractC0170i {
        /* renamed from: a */
        void mo10100a(Messenger messenger);

        /* renamed from: a */
        void mo10099a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: a */
        void mo10098a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    public static final class C0171j {

        /* renamed from: a */
        private Messenger f390a;

        /* renamed from: b */
        private Bundle f391b;

        public C0171j(IBinder iBinder, Bundle bundle) {
            this.f390a = new Messenger(iBinder);
            this.f391b = bundle;
        }

        /* renamed from: a */
        private void m10097a(int i, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f390a.send(obtain);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m10096a(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f391b);
            m10097a(1, bundle, messenger);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m10095a(Messenger messenger) {
            m10097a(2, null, messenger);
        }

        /* renamed from: a */
        final void m10094a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            C0608g.m8744a(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            m10097a(3, bundle2, messenger);
        }

        /* renamed from: b */
        final void m10093b(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.f391b);
            m10097a(6, bundle, messenger);
        }

        /* renamed from: b */
        final void m10092b(Messenger messenger) {
            m10097a(7, null, messenger);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$k */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    private static final class C0172k {

        /* renamed from: a */
        private final List<AbstractC0173l> f392a = new ArrayList();

        /* renamed from: b */
        private final List<Bundle> f393b = new ArrayList();

        /* renamed from: a */
        public final AbstractC0173l m10090a(Bundle bundle) {
            for (int i = 0; i < this.f393b.size(); i++) {
                if (C0961d.m7527a(this.f393b.get(i), bundle)) {
                    return this.f392a.get(i);
                }
            }
            return null;
        }

        /* renamed from: a */
        public final List<Bundle> m10091a() {
            return this.f393b;
        }

        /* renamed from: b */
        public final List<AbstractC0173l> m10089b() {
            return this.f392a;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$l */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static abstract class AbstractC0173l {

        /* renamed from: a */
        final Object f394a;

        /* renamed from: b */
        final IBinder f395b = new Binder();

        /* renamed from: c */
        WeakReference<C0172k> f396c;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$l$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l$a.class */
        private class C0174a implements C0182f.AbstractC0185c {
            C0174a() {
            }

            @Override // android.support.p014v4.media.C0182f.AbstractC0185c
            /* renamed from: a */
            public final void mo10073a(List<?> list) {
                C0172k kVar = AbstractC0173l.this.f396c == null ? null : AbstractC0173l.this.f396c.get();
                if (kVar == null) {
                    MediaItem.m10113a(list);
                    return;
                }
                List<MediaItem> a = MediaItem.m10113a(list);
                List<AbstractC0173l> b = kVar.m10089b();
                List<Bundle> a2 = kVar.m10091a();
                for (int i = 0; i < b.size(); i++) {
                    Bundle bundle = a2.get(i);
                    if (!(bundle == null || a == null)) {
                        int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                        int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                        if (i2 != -1 || i3 != -1) {
                            int i4 = i3 * i2;
                            int i5 = i4 + i3;
                            if (i2 < 0 || i3 <= 0 || i4 >= a.size()) {
                                Collections.emptyList();
                            } else {
                                int i6 = i5;
                                if (i5 > a.size()) {
                                    i6 = a.size();
                                }
                                a.subList(i4, i6);
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$l$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l$b.class */
        private final class C0175b extends C0174a implements C0187g.AbstractC0188a {
            C0175b() {
                super();
            }

            @Override // android.support.p014v4.media.C0187g.AbstractC0188a
            /* renamed from: b */
            public final void mo10072b(List<?> list) {
                MediaItem.m10113a(list);
            }
        }

        public AbstractC0173l() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f394a = new C0187g.C0189b(new C0175b());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f394a = new C0182f.C0186d(new C0174a());
            } else {
                this.f394a = null;
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, C0160b bVar) {
        this.f355b = Build.VERSION.SDK_INT >= 26 ? new C0167g(context, componentName, bVar) : Build.VERSION.SDK_INT >= 23 ? new C0166f(context, componentName, bVar) : Build.VERSION.SDK_INT >= 21 ? new C0165e(context, componentName, bVar) : new C0168h(context, componentName, bVar);
    }

    /* renamed from: a */
    public final void m10116a() {
        this.f355b.mo10105c();
    }

    /* renamed from: b */
    public final void m10115b() {
        this.f355b.mo10104d();
    }

    /* renamed from: c */
    public final MediaSessionCompat.Token m10114c() {
        return this.f355b.mo10103e();
    }
}
