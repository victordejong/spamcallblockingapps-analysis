package androidx.media;

import android.app.Service;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.support.p014v4.media.MediaBrowserCompat;
import android.support.p014v4.media.session.MediaSessionCompat;
import android.support.p014v4.p015os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.C0608g;
import androidx.core.p036f.C0682d;
import androidx.media.C0976s;
import androidx.p026b.C0529a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat.class */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: a */
    static final boolean f3928a = Log.isLoggable("MBServiceCompat", 3);

    /* renamed from: c */
    C0952b f3930c;

    /* renamed from: e */
    MediaSessionCompat.Token f3932e;

    /* renamed from: b */
    final C0529a<IBinder, C0952b> f3929b = new C0529a<>();

    /* renamed from: d */
    final HandlerC0957g f3931d = new HandlerC0957g();

    /* renamed from: androidx.media.MediaBrowserServiceCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$a.class */
    public static final class C0951a {

        /* renamed from: a */
        private final String f3933a;

        /* renamed from: b */
        private final Bundle f3934b;

        /* renamed from: a */
        public final String m7540a() {
            return this.f3933a;
        }

        /* renamed from: b */
        public final Bundle m7539b() {
            return this.f3934b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$b.class */
    public final class C0952b implements IBinder.DeathRecipient {

        /* renamed from: a */
        public final String f3935a;

        /* renamed from: b */
        public final int f3936b;

        /* renamed from: c */
        public final int f3937c;

        /* renamed from: d */
        public final C0976s.C0977a f3938d;

        /* renamed from: e */
        public final Bundle f3939e;

        /* renamed from: f */
        public final AbstractC0955e f3940f;

        /* renamed from: g */
        public final HashMap<String, List<C0682d<IBinder, Bundle>>> f3941g = new HashMap<>();

        /* renamed from: h */
        public C0951a f3942h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0952b(String str, int i, int i2, Bundle bundle, AbstractC0955e eVar) {
            this.f3935a = str;
            this.f3936b = i;
            this.f3937c = i2;
            this.f3938d = new C0976s.C0977a(str, i, i2);
            this.f3939e = bundle;
            this.f3940f = eVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.f3931d.post(new RunnableC0966i(this));
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$c.class */
    public static class C0953c<T> {

        /* renamed from: a */
        private final Object f3944a;

        /* renamed from: b */
        private boolean f3945b;

        /* renamed from: c */
        private boolean f3946c;

        /* renamed from: d */
        private boolean f3947d;

        /* renamed from: e */
        private int f3948e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0953c(Object obj) {
            this.f3944a = obj;
        }

        /* renamed from: a */
        void mo7526a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7538a(int i) {
            this.f3948e = i;
        }

        /* renamed from: b */
        void mo7525b() {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f3944a);
        }

        /* renamed from: c */
        public final void m7537c() {
            if (this.f3946c || this.f3947d) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f3944a);
            }
            this.f3946c = true;
            mo7526a();
        }

        /* renamed from: d */
        public final void m7536d() {
            if (this.f3946c || this.f3947d) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f3944a);
            }
            this.f3947d = true;
            mo7525b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: e */
        public final boolean m7535e() {
            return this.f3945b || this.f3946c || this.f3947d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: f */
        public final int m7534f() {
            return this.f3948e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$d.class */
    public final class C0954d {
        C0954d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$e */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$e.class */
    public interface AbstractC0955e {
        /* renamed from: a */
        IBinder mo7533a();

        /* renamed from: a */
        void mo7531a(String str, MediaSessionCompat.Token token, Bundle bundle);

        /* renamed from: a */
        void mo7530a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);

        /* renamed from: b */
        void mo7529b();
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$f */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$f.class */
    private static final class C0956f implements AbstractC0955e {

        /* renamed from: a */
        final Messenger f3950a;

        C0956f(Messenger messenger) {
            this.f3950a = messenger;
        }

        /* renamed from: a */
        private void m7532a(int i, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f3950a.send(obtain);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0955e
        /* renamed from: a */
        public final IBinder mo7533a() {
            return this.f3950a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0955e
        /* renamed from: a */
        public final void mo7531a(String str, MediaSessionCompat.Token token, Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putInt("extra_service_version", 2);
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putParcelable("data_media_session_token", token);
            bundle3.putBundle("data_root_hints", bundle2);
            m7532a(1, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0955e
        /* renamed from: a */
        public final void mo7530a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            m7532a(3, bundle3);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.AbstractC0955e
        /* renamed from: b */
        public final void mo7529b() {
            m7532a(2, null);
        }
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$g */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$g.class */
    private final class HandlerC0957g extends Handler {

        /* renamed from: b */
        private final C0954d f3952b;

        HandlerC0957g() {
            this.f3952b = new C0954d();
        }

        /* renamed from: a */
        private void m7528a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.m10067a(bundle);
                    C0954d dVar = this.f3952b;
                    String string = data.getString("data_package_name");
                    int i = data.getInt("data_calling_pid");
                    int i2 = data.getInt("data_calling_uid");
                    C0956f fVar = new C0956f(message.replyTo);
                    MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                    boolean z = false;
                    if (string != null) {
                        String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i2);
                        int length = packagesForUid.length;
                        int i3 = 0;
                        while (true) {
                            z = false;
                            if (i3 < length) {
                                if (packagesForUid[i3].equals(string)) {
                                    z = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    if (z) {
                        MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0967j(dVar, fVar, string, i, i2, bundle));
                        return;
                    }
                    throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
                case 2:
                    C0954d dVar2 = this.f3952b;
                    MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0968k(dVar2, new C0956f(message.replyTo)));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.m10067a(bundle2);
                    C0954d dVar3 = this.f3952b;
                    MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0969l(dVar3, new C0956f(message.replyTo), data.getString("data_media_item_id"), C0608g.m8745a(data, "data_callback_token"), bundle2));
                    return;
                case 4:
                    C0954d dVar4 = this.f3952b;
                    MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0970m(dVar4, new C0956f(message.replyTo), data.getString("data_media_item_id"), C0608g.m8745a(data, "data_callback_token")));
                    return;
                case 5:
                    C0954d dVar5 = this.f3952b;
                    String string2 = data.getString("data_media_item_id");
                    ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    C0956f fVar2 = new C0956f(message.replyTo);
                    if (!TextUtils.isEmpty(string2) && resultReceiver != null) {
                        MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0971n(dVar5, fVar2, string2, resultReceiver));
                        return;
                    }
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.m10067a(bundle3);
                    C0954d dVar6 = this.f3952b;
                    MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0972o(dVar6, new C0956f(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3));
                    return;
                case 7:
                    C0954d dVar7 = this.f3952b;
                    MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0973p(dVar7, new C0956f(message.replyTo)));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.m10067a(bundle4);
                    C0954d dVar8 = this.f3952b;
                    String string3 = data.getString("data_search_query");
                    ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    C0956f fVar3 = new C0956f(message.replyTo);
                    if (!TextUtils.isEmpty(string3) && resultReceiver2 != null) {
                        MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0974q(dVar8, fVar3, string3, bundle4, resultReceiver2));
                        return;
                    }
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.m10067a(bundle5);
                    C0954d dVar9 = this.f3952b;
                    String string4 = data.getString("data_custom_action");
                    ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    C0956f fVar4 = new C0956f(message.replyTo);
                    if (!TextUtils.isEmpty(string4) && resultReceiver3 != null) {
                        MediaBrowserServiceCompat.this.f3931d.m7528a(new RunnableC0975r(dVar9, fVar4, string4, bundle5, resultReceiver3));
                        return;
                    }
                    return;
                default:
                    Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    return;
            }
        }

        @Override // android.os.Handler
        public final boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            data.putInt("data_calling_pid", Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<MediaBrowserCompat.MediaItem> m7541b() {
        return null;
    }

    /* renamed from: a */
    public abstract C0951a m7544a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7542a(String str, C0952b bVar, IBinder iBinder, Bundle bundle) {
        List<C0682d<IBinder, Bundle>> list = bVar.f3941g.get(str);
        List<C0682d<IBinder, Bundle>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        for (C0682d<IBinder, Bundle> dVar : list2) {
            if (iBinder == dVar.f3006a && C0961d.m7527a(bundle, dVar.f3007b)) {
                return;
            }
        }
        list2.add(new C0682d<>(iBinder, bundle));
        bVar.f3941g.put(str, list2);
        C0962e eVar = new C0962e(this, str, bVar, str, bundle);
        this.f3930c = bVar;
        if (bundle != null) {
            eVar.m7538a(1);
        }
        this.f3930c = null;
        if (eVar.m7535e()) {
            this.f3930c = bVar;
            this.f3930c = null;
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + bVar.f3935a + " id=" + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7543a(String str, C0952b bVar, IBinder iBinder) {
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (iBinder == null) {
                if (bVar.f3941g.remove(str) == null) {
                    z = false;
                }
                return z;
            }
            List<C0682d<IBinder, Bundle>> list = bVar.f3941g.get(str);
            if (list != null) {
                Iterator<C0682d<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f3006a) {
                        it.remove();
                        z3 = true;
                    }
                }
                z2 = z3;
                if (list.size() == 0) {
                    bVar.f3941g.remove(str);
                    z2 = z3;
                }
            }
            return z2;
        } finally {
            this.f3930c = bVar;
            this.f3930c = null;
        }
    }
}
