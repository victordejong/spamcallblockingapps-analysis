package android.support.p009v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
import android.os.Process;
import android.os.RemoteException;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.support.p009v4.p010os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p000a.p001a.p003b.p005b.p006a.AbstractC0011b;
import p012b.p035f.C0780a;
import p012b.p042i.p043h.C0849d;
import p012b.p074r.C1140b;
/* renamed from: android.support.v4.media.MediaBrowserCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat.class */
public final class MediaBrowserCompat {

    /* renamed from: b */
    public static final boolean f4b = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: a */
    public final AbstractC0024e f5a;

    /* renamed from: android.support.v4.media.MediaBrowserCompat$CustomActionResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$CustomActionResultReceiver.class */
    public static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: d */
        public final String f6d;

        /* renamed from: e */
        public final Bundle f7e;

        /* renamed from: f */
        public final AbstractC0022c f8f;

        @Override // android.support.p009v4.p010os.ResultReceiver
        /* renamed from: a */
        public void mo39231a(int i, Bundle bundle) {
            if (this.f8f != null) {
                MediaSessionCompat.m39248a(bundle);
                if (i == -1) {
                    this.f8f.m39326a(this.f6d, this.f7e, bundle);
                } else if (i == 0) {
                    this.f8f.m39324c(this.f6d, this.f7e, bundle);
                } else if (i != 1) {
                    Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.f7e + ", resultData=" + bundle + ")");
                } else {
                    this.f8f.m39325b(this.f6d, this.f7e, bundle);
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$ItemReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$ItemReceiver.class */
    public static class ItemReceiver extends ResultReceiver {

        /* renamed from: d */
        public final String f9d;

        /* renamed from: e */
        public final AbstractC0023d f10e;

        @Override // android.support.p009v4.p010os.ResultReceiver
        /* renamed from: a */
        public void mo39231a(int i, Bundle bundle) {
            MediaSessionCompat.m39248a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.f10e.m39322a(this.f9d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.f10e.m39323a((MediaItem) parcelable);
            } else {
                this.f10e.m39322a(this.f9d);
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem.class */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new C0017a();

        /* renamed from: a */
        public final int f11a;

        /* renamed from: b */
        public final MediaDescriptionCompat f12b;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$MediaItem$a.class */
        public static final class C0017a implements Parcelable.Creator<MediaItem> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        }

        public MediaItem(Parcel parcel) {
            this.f11a = parcel.readInt();
            this.f12b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            } else if (!TextUtils.isEmpty(mediaDescriptionCompat.m39287b())) {
                this.f11a = i;
                this.f12b = mediaDescriptionCompat;
            } else {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
        }

        /* renamed from: a */
        public static MediaItem m39330a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.m39288a(mediaItem.getDescription()), mediaItem.getFlags());
        }

        /* renamed from: a */
        public static List<MediaItem> m39329a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m39330a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f11a + ", mDescription=" + this.f12b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f11a);
            this.f12b.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
    public static class SearchResultReceiver extends ResultReceiver {

        /* renamed from: d */
        public final String f13d;

        /* renamed from: e */
        public final Bundle f14e;

        /* renamed from: f */
        public final AbstractC0035k f15f;

        @Override // android.support.p009v4.p010os.ResultReceiver
        /* renamed from: a */
        public void mo39231a(int i, Bundle bundle) {
            MediaSessionCompat.m39248a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f15f.m39305a(this.f13d, this.f14e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                ArrayList arrayList2 = new ArrayList();
                int length = parcelableArray.length;
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 >= length) {
                        break;
                    }
                    arrayList2.add((MediaItem) parcelableArray[i2]);
                    i2++;
                }
            }
            this.f15f.m39304a(this.f13d, this.f14e, arrayList);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$a.class */
    public static class HandlerC0018a extends Handler {

        /* renamed from: a */
        public final WeakReference<AbstractC0034j> f16a;

        /* renamed from: b */
        public WeakReference<Messenger> f17b;

        public HandlerC0018a(AbstractC0034j jVar) {
            this.f16a = new WeakReference<>(jVar);
        }

        /* renamed from: a */
        public void m39328a(Messenger messenger) {
            this.f17b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f17b;
            if (weakReference != null && weakReference.get() != null && this.f16a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.m39248a(data);
                AbstractC0034j jVar = this.f16a.get();
                Messenger messenger = this.f17b.get();
                try {
                    int i = message.what;
                    if (i == 1) {
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.m39248a(bundle);
                        jVar.mo39307a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                    } else if (i == 2) {
                        jVar.mo39308a(messenger);
                    } else if (i != 3) {
                        Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    } else {
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.m39248a(bundle2);
                        Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                        MediaSessionCompat.m39248a(bundle3);
                        jVar.mo39306a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    }
                } catch (BadParcelableException e) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        jVar.mo39308a(messenger);
                    }
                }
            }
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b.class */
    public static class C0019b {

        /* renamed from: a */
        public final MediaBrowser.ConnectionCallback f18a;

        /* renamed from: b */
        public AbstractC0021b f19b;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$a.class */
        public class C0020a extends MediaBrowser.ConnectionCallback {
            public C0020a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                AbstractC0021b bVar = C0019b.this.f19b;
                if (bVar != null) {
                    bVar.mo39320e();
                }
                C0019b.this.mo38246a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                AbstractC0021b bVar = C0019b.this.f19b;
                if (bVar != null) {
                    bVar.mo39319f();
                }
                C0019b.this.mo38244b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                AbstractC0021b bVar = C0019b.this.f19b;
                if (bVar != null) {
                    bVar.mo39321c();
                }
                C0019b.this.mo38243c();
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$b$b.class */
        public interface AbstractC0021b {
            /* renamed from: c */
            void mo39321c();

            /* renamed from: e */
            void mo39320e();

            /* renamed from: f */
            void mo39319f();
        }

        public C0019b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f18a = new C0020a();
            } else {
                this.f18a = null;
            }
        }

        /* renamed from: a */
        public void mo38246a() {
            throw null;
        }

        /* renamed from: a */
        public void m39327a(AbstractC0021b bVar) {
            this.f19b = bVar;
        }

        /* renamed from: b */
        public void mo38244b() {
            throw null;
        }

        /* renamed from: c */
        public void mo38243c() {
            throw null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$c.class */
    public static abstract class AbstractC0022c {
        /* renamed from: a */
        public abstract void m39326a(String str, Bundle bundle, Bundle bundle2);

        /* renamed from: b */
        public abstract void m39325b(String str, Bundle bundle, Bundle bundle2);

        /* renamed from: c */
        public abstract void m39324c(String str, Bundle bundle, Bundle bundle2);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$d.class */
    public static abstract class AbstractC0023d {
        /* renamed from: a */
        public abstract void m39323a(MediaItem mediaItem);

        /* renamed from: a */
        public abstract void m39322a(String str);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$e.class */
    public interface AbstractC0024e {
        /* renamed from: a */
        MediaSessionCompat.Token mo39318a();

        /* renamed from: b */
        void mo39315b();

        /* renamed from: d */
        void mo39313d();
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$f.class */
    public static class C0025f implements AbstractC0024e, AbstractC0034j, C0019b.AbstractC0021b {

        /* renamed from: a */
        public final Context f21a;

        /* renamed from: b */
        public final MediaBrowser f22b;

        /* renamed from: c */
        public final Bundle f23c;

        /* renamed from: d */
        public final HandlerC0018a f24d = new HandlerC0018a(this);

        /* renamed from: e */
        public final C0780a<String, C0037m> f25e = new C0780a<>();

        /* renamed from: f */
        public C0036l f26f;

        /* renamed from: g */
        public Messenger f27g;

        /* renamed from: h */
        public MediaSessionCompat.Token f28h;

        /* renamed from: i */
        public Bundle f29i;

        public C0025f(Context context, ComponentName componentName, C0019b bVar, Bundle bundle) {
            this.f21a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f23c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            this.f23c.putInt("extra_calling_pid", Process.myPid());
            bVar.m39327a(this);
            this.f22b = new MediaBrowser(context, componentName, bVar.f18a, this.f23c);
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: a */
        public MediaSessionCompat.Token mo39318a() {
            if (this.f28h == null) {
                this.f28h = MediaSessionCompat.Token.m39240a(this.f22b.getSessionToken());
            }
            return this.f28h;
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39308a(Messenger messenger) {
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39307a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39306a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f27g == messenger) {
                C0037m mVar = this.f25e.get(str);
                if (mVar != null) {
                    AbstractC0038n a = mVar.m39296a(bundle);
                    if (a == null) {
                        return;
                    }
                    if (bundle == null) {
                        if (list == null) {
                            a.m39294a(str);
                            return;
                        }
                        this.f29i = bundle2;
                        a.m39292a(str, list);
                    } else if (list == null) {
                        a.m39293a(str, bundle);
                    } else {
                        this.f29i = bundle2;
                        a.m39291a(str, list, bundle);
                    }
                } else if (MediaBrowserCompat.f4b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                }
            }
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: b */
        public void mo39315b() {
            Messenger messenger;
            C0036l lVar = this.f26f;
            if (!(lVar == null || (messenger = this.f27g) == null)) {
                try {
                    lVar.m39298b(messenger);
                } catch (RemoteException e) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            this.f22b.disconnect();
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b.AbstractC0021b
        /* renamed from: c */
        public void mo39321c() {
            this.f26f = null;
            this.f27g = null;
            this.f28h = null;
            this.f24d.m39328a(null);
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: d */
        public void mo39313d() {
            this.f22b.connect();
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b.AbstractC0021b
        /* renamed from: e */
        public void mo39320e() {
            try {
                Bundle extras = this.f22b.getExtras();
                if (extras != null) {
                    extras.getInt("extra_service_version", 0);
                    IBinder a = C0849d.m35783a(extras, "extra_messenger");
                    if (a != null) {
                        this.f26f = new C0036l(a, this.f23c);
                        Messenger messenger = new Messenger(this.f24d);
                        this.f27g = messenger;
                        this.f24d.m39328a(messenger);
                        try {
                            this.f26f.m39299b(this.f21a, this.f27g);
                        } catch (RemoteException e) {
                            Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                        }
                    }
                    AbstractC0011b a2 = AbstractC0011b.AbstractBinderC0012a.m39338a(C0849d.m35783a(extras, "extra_session_binder"));
                    if (a2 != null) {
                        this.f28h = MediaSessionCompat.Token.m39239a(this.f22b.getSessionToken(), a2);
                    }
                }
            } catch (IllegalStateException e2) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e2);
            }
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.C0019b.AbstractC0021b
        /* renamed from: f */
        public void mo39319f() {
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$g.class */
    public static class C0026g extends C0025f {
        public C0026g(Context context, ComponentName componentName, C0019b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$h */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$h.class */
    public static class C0027h extends C0026g {
        public C0027h(Context context, ComponentName componentName, C0019b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$i */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i.class */
    public static class C0028i implements AbstractC0024e, AbstractC0034j {

        /* renamed from: a */
        public final Context f30a;

        /* renamed from: b */
        public final ComponentName f31b;

        /* renamed from: c */
        public final C0019b f32c;

        /* renamed from: d */
        public final Bundle f33d;

        /* renamed from: e */
        public final HandlerC0018a f34e = new HandlerC0018a(this);

        /* renamed from: f */
        public final C0780a<String, C0037m> f35f = new C0780a<>();

        /* renamed from: g */
        public int f36g = 1;

        /* renamed from: h */
        public ServiceConnectionC0031c f37h;

        /* renamed from: i */
        public C0036l f38i;

        /* renamed from: j */
        public Messenger f39j;

        /* renamed from: k */
        public String f40k;

        /* renamed from: l */
        public MediaSessionCompat.Token f41l;

        /* renamed from: m */
        public Bundle f42m;

        /* renamed from: n */
        public Bundle f43n;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$i$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$a.class */
        public class RunnableC0029a implements Runnable {
            public RunnableC0029a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0028i iVar = C0028i.this;
                if (iVar.f36g != 0) {
                    iVar.f36g = 2;
                    if (!MediaBrowserCompat.f4b || iVar.f37h == null) {
                        C0028i iVar2 = C0028i.this;
                        if (iVar2.f38i != null) {
                            throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + C0028i.this.f38i);
                        } else if (iVar2.f39j == null) {
                            Intent intent = new Intent("android.media.browse.MediaBrowserService");
                            intent.setComponent(C0028i.this.f31b);
                            C0028i iVar3 = C0028i.this;
                            iVar3.f37h = new ServiceConnectionC0031c();
                            boolean z = false;
                            try {
                                z = C0028i.this.f30a.bindService(intent, C0028i.this.f37h, 1);
                            } catch (Exception e) {
                                Log.e("MediaBrowserCompat", "Failed binding to service " + C0028i.this.f31b);
                            }
                            if (!z) {
                                C0028i.this.m39312e();
                                C0028i.this.f32c.mo38244b();
                            }
                            if (MediaBrowserCompat.f4b) {
                                Log.d("MediaBrowserCompat", "connect...");
                                C0028i.this.m39314c();
                            }
                        } else {
                            throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + C0028i.this.f39j);
                        }
                    } else {
                        throw new RuntimeException("mServiceConnection should be null. Instead it is " + C0028i.this.f37h);
                    }
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$i$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$b.class */
        public class RunnableC0030b implements Runnable {
            public RunnableC0030b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0028i iVar = C0028i.this;
                Messenger messenger = iVar.f39j;
                if (messenger != null) {
                    try {
                        iVar.f38i.m39301a(messenger);
                    } catch (RemoteException e) {
                        Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0028i.this.f31b);
                    }
                }
                C0028i iVar2 = C0028i.this;
                int i = iVar2.f36g;
                iVar2.m39312e();
                if (i != 0) {
                    C0028i.this.f36g = i;
                }
                if (MediaBrowserCompat.f4b) {
                    Log.d("MediaBrowserCompat", "disconnect...");
                    C0028i.this.m39314c();
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$i$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c.class */
        public class ServiceConnectionC0031c implements ServiceConnection {

            /* renamed from: android.support.v4.media.MediaBrowserCompat$i$c$a */
            /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c$a.class */
            public class RunnableC0032a implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ ComponentName f47a;

                /* renamed from: b */
                public final /* synthetic */ IBinder f48b;

                public RunnableC0032a(ComponentName componentName, IBinder iBinder) {
                    this.f47a = componentName;
                    this.f48b = iBinder;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f4b) {
                        Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.f47a + " binder=" + this.f48b);
                        C0028i.this.m39314c();
                    }
                    if (ServiceConnectionC0031c.this.m39309a("onServiceConnected")) {
                        C0028i iVar = C0028i.this;
                        iVar.f38i = new C0036l(this.f48b, iVar.f33d);
                        C0028i.this.f39j = new Messenger(C0028i.this.f34e);
                        C0028i iVar2 = C0028i.this;
                        iVar2.f34e.m39328a(iVar2.f39j);
                        C0028i.this.f36g = 2;
                        try {
                            if (MediaBrowserCompat.f4b) {
                                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                                C0028i.this.m39314c();
                            }
                            C0028i.this.f38i.m39302a(C0028i.this.f30a, C0028i.this.f39j);
                        } catch (RemoteException e) {
                            Log.w("MediaBrowserCompat", "RemoteException during connect for " + C0028i.this.f31b);
                            if (MediaBrowserCompat.f4b) {
                                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                                C0028i.this.m39314c();
                            }
                        }
                    }
                }
            }

            /* renamed from: android.support.v4.media.MediaBrowserCompat$i$c$b */
            /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$i$c$b.class */
            public class RunnableC0033b implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ ComponentName f50a;

                public RunnableC0033b(ComponentName componentName) {
                    this.f50a = componentName;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f4b) {
                        Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.f50a + " this=" + this + " mServiceConnection=" + C0028i.this.f37h);
                        C0028i.this.m39314c();
                    }
                    if (ServiceConnectionC0031c.this.m39309a("onServiceDisconnected")) {
                        C0028i iVar = C0028i.this;
                        iVar.f38i = null;
                        iVar.f39j = null;
                        iVar.f34e.m39328a(null);
                        C0028i iVar2 = C0028i.this;
                        iVar2.f36g = 4;
                        iVar2.f32c.mo38243c();
                    }
                }
            }

            public ServiceConnectionC0031c() {
            }

            /* renamed from: a */
            public final void m39310a(Runnable runnable) {
                if (Thread.currentThread() == C0028i.this.f34e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    C0028i.this.f34e.post(runnable);
                }
            }

            /* renamed from: a */
            public boolean m39309a(String str) {
                int i;
                C0028i iVar = C0028i.this;
                if (iVar.f37h == this && (i = iVar.f36g) != 0 && i != 1) {
                    return true;
                }
                int i2 = C0028i.this.f36g;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                Log.i("MediaBrowserCompat", str + " for " + C0028i.this.f31b + " with mServiceConnection=" + C0028i.this.f37h + " this=" + this);
                return false;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                m39310a(new RunnableC0032a(componentName, iBinder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                m39310a(new RunnableC0033b(componentName));
            }
        }

        public C0028i(Context context, ComponentName componentName, C0019b bVar, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            } else if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            } else if (bVar != null) {
                this.f30a = context;
                this.f31b = componentName;
                this.f32c = bVar;
                this.f33d = bundle == null ? null : new Bundle(bundle);
            } else {
                throw new IllegalArgumentException("connection callback must not be null");
            }
        }

        /* renamed from: a */
        public static String m39317a(int i) {
            if (i == 0) {
                return "CONNECT_STATE_DISCONNECTING";
            }
            if (i == 1) {
                return "CONNECT_STATE_DISCONNECTED";
            }
            if (i == 2) {
                return "CONNECT_STATE_CONNECTING";
            }
            if (i == 3) {
                return "CONNECT_STATE_CONNECTED";
            }
            if (i == 4) {
                return "CONNECT_STATE_SUSPENDED";
            }
            return "UNKNOWN/" + i;
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: a */
        public MediaSessionCompat.Token mo39318a() {
            if (m39311f()) {
                return this.f41l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f36g + ")");
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39308a(Messenger messenger) {
            Log.e("MediaBrowserCompat", "onConnectFailed for " + this.f31b);
            if (m39316a(messenger, "onConnectFailed")) {
                if (this.f36g != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m39317a(this.f36g) + "... ignoring");
                    return;
                }
                m39312e();
                this.f32c.mo38244b();
            }
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39307a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (m39316a(messenger, "onConnect")) {
                if (this.f36g != 2) {
                    Log.w("MediaBrowserCompat", "onConnect from service while mState=" + m39317a(this.f36g) + "... ignoring");
                    return;
                }
                this.f40k = str;
                this.f41l = token;
                this.f42m = bundle;
                this.f36g = 3;
                if (MediaBrowserCompat.f4b) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    m39314c();
                }
                this.f32c.mo38246a();
                try {
                    for (Map.Entry<String, C0037m> entry : this.f35f.entrySet()) {
                        String key = entry.getKey();
                        C0037m value = entry.getValue();
                        List<AbstractC0038n> a = value.m39297a();
                        List<Bundle> b = value.m39295b();
                        for (int i = 0; i < a.size(); i++) {
                            this.f38i.m39300a(key, a.get(i).f56a, b.get(i), this.f39j);
                        }
                    }
                } catch (RemoteException e) {
                    Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
                }
            }
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0034j
        /* renamed from: a */
        public void mo39306a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (m39316a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f4b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for " + this.f31b + " id=" + str);
                }
                C0037m mVar = this.f35f.get(str);
                if (mVar != null) {
                    AbstractC0038n a = mVar.m39296a(bundle);
                    if (a == null) {
                        return;
                    }
                    if (bundle == null) {
                        if (list == null) {
                            a.m39294a(str);
                            return;
                        }
                        this.f43n = bundle2;
                        a.m39292a(str, list);
                    } else if (list == null) {
                        a.m39293a(str, bundle);
                    } else {
                        this.f43n = bundle2;
                        a.m39291a(str, list, bundle);
                    }
                } else if (MediaBrowserCompat.f4b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                }
            }
        }

        /* renamed from: a */
        public final boolean m39316a(Messenger messenger, String str) {
            int i;
            if (this.f39j == messenger && (i = this.f36g) != 0 && i != 1) {
                return true;
            }
            int i2 = this.f36g;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            Log.i("MediaBrowserCompat", str + " for " + this.f31b + " with mCallbacksMessenger=" + this.f39j + " this=" + this);
            return false;
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: b */
        public void mo39315b() {
            this.f36g = 0;
            this.f34e.post(new RunnableC0030b());
        }

        /* renamed from: c */
        public void m39314c() {
            Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
            Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.f31b);
            Log.d("MediaBrowserCompat", "  mCallback=" + this.f32c);
            Log.d("MediaBrowserCompat", "  mRootHints=" + this.f33d);
            Log.d("MediaBrowserCompat", "  mState=" + m39317a(this.f36g));
            Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.f37h);
            Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.f38i);
            Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.f39j);
            Log.d("MediaBrowserCompat", "  mRootId=" + this.f40k);
            Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.f41l);
        }

        @Override // android.support.p009v4.media.MediaBrowserCompat.AbstractC0024e
        /* renamed from: d */
        public void mo39313d() {
            int i = this.f36g;
            if (i == 0 || i == 1) {
                this.f36g = 2;
                this.f34e.post(new RunnableC0029a());
                return;
            }
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + m39317a(this.f36g) + ")");
        }

        /* renamed from: e */
        public void m39312e() {
            ServiceConnectionC0031c cVar = this.f37h;
            if (cVar != null) {
                this.f30a.unbindService(cVar);
            }
            this.f36g = 1;
            this.f37h = null;
            this.f38i = null;
            this.f39j = null;
            this.f34e.m39328a(null);
            this.f40k = null;
            this.f41l = null;
        }

        /* renamed from: f */
        public boolean m39311f() {
            return this.f36g == 3;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$j */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$j.class */
    public interface AbstractC0034j {
        /* renamed from: a */
        void mo39308a(Messenger messenger);

        /* renamed from: a */
        void mo39307a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: a */
        void mo39306a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$k */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$k.class */
    public static abstract class AbstractC0035k {
        /* renamed from: a */
        public abstract void m39305a(String str, Bundle bundle);

        /* renamed from: a */
        public abstract void m39304a(String str, Bundle bundle, List<MediaItem> list);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$l */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$l.class */
    public static class C0036l {

        /* renamed from: a */
        public Messenger f52a;

        /* renamed from: b */
        public Bundle f53b;

        public C0036l(IBinder iBinder, Bundle bundle) {
            this.f52a = new Messenger(iBinder);
            this.f53b = bundle;
        }

        /* renamed from: a */
        public final void m39303a(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f52a.send(obtain);
        }

        /* renamed from: a */
        public void m39302a(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f53b);
            m39303a(1, bundle, messenger);
        }

        /* renamed from: a */
        public void m39301a(Messenger messenger) throws RemoteException {
            m39303a(2, null, messenger);
        }

        /* renamed from: a */
        public void m39300a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            C0849d.m35782a(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            m39303a(3, bundle2, messenger);
        }

        /* renamed from: b */
        public void m39299b(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f53b);
            m39303a(6, bundle, messenger);
        }

        /* renamed from: b */
        public void m39298b(Messenger messenger) throws RemoteException {
            m39303a(7, null, messenger);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$m */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$m.class */
    public static class C0037m {

        /* renamed from: a */
        public final List<AbstractC0038n> f54a = new ArrayList();

        /* renamed from: b */
        public final List<Bundle> f55b = new ArrayList();

        /* renamed from: a */
        public AbstractC0038n m39296a(Bundle bundle) {
            for (int i = 0; i < this.f55b.size(); i++) {
                if (C1140b.m34587a(this.f55b.get(i), bundle)) {
                    return this.f54a.get(i);
                }
            }
            return null;
        }

        /* renamed from: a */
        public List<AbstractC0038n> m39297a() {
            return this.f54a;
        }

        /* renamed from: b */
        public List<Bundle> m39295b() {
            return this.f55b;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompat$n */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n.class */
    public static abstract class AbstractC0038n {

        /* renamed from: a */
        public final IBinder f56a = new Binder();

        /* renamed from: b */
        public WeakReference<C0037m> f57b;

        /* renamed from: android.support.v4.media.MediaBrowserCompat$n$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$a.class */
        public class C0039a extends MediaBrowser.SubscriptionCallback {
            public C0039a() {
            }

            /* renamed from: a */
            public List<MediaItem> m39290a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
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

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
                WeakReference<C0037m> weakReference = AbstractC0038n.this.f57b;
                C0037m mVar = weakReference == null ? null : weakReference.get();
                if (mVar == null) {
                    AbstractC0038n.this.m39292a(str, MediaItem.m39329a((List<?>) list));
                    return;
                }
                List<MediaItem> a = MediaItem.m39329a((List<?>) list);
                List<AbstractC0038n> a2 = mVar.m39297a();
                List<Bundle> b = mVar.m39295b();
                for (int i = 0; i < a2.size(); i++) {
                    Bundle bundle = b.get(i);
                    if (bundle == null) {
                        AbstractC0038n.this.m39292a(str, a);
                    } else {
                        AbstractC0038n.this.m39291a(str, m39290a(a, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str) {
                AbstractC0038n.this.m39294a(str);
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$n$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$n$b.class */
        public class C0040b extends C0039a {
            public C0040b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                AbstractC0038n.this.m39291a(str, MediaItem.m39329a((List<?>) list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(String str, Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                AbstractC0038n.this.m39293a(str, bundle);
            }
        }

        public AbstractC0038n() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                new C0040b();
            } else if (i >= 21) {
                new C0039a();
            }
        }

        /* renamed from: a */
        public void m39294a(String str) {
        }

        /* renamed from: a */
        public void m39293a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void m39292a(String str, List<MediaItem> list) {
        }

        /* renamed from: a */
        public void m39291a(String str, List<MediaItem> list, Bundle bundle) {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, C0019b bVar, Bundle bundle) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f5a = new C0027h(context, componentName, bVar, bundle);
        } else if (i >= 23) {
            this.f5a = new C0026g(context, componentName, bVar, bundle);
        } else if (i >= 21) {
            this.f5a = new C0025f(context, componentName, bVar, bundle);
        } else {
            this.f5a = new C0028i(context, componentName, bVar, bundle);
        }
    }

    /* renamed from: a */
    public void m39333a() {
        Log.d("MediaBrowserCompat", "Connecting to a MediaBrowserService.");
        this.f5a.mo39313d();
    }

    /* renamed from: b */
    public void m39332b() {
        this.f5a.mo39315b();
    }

    /* renamed from: c */
    public MediaSessionCompat.Token m39331c() {
        return this.f5a.mo39318a();
    }
}
