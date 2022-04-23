package android.support.p014v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p014v4.media.MediaMetadataCompat;
import android.support.p014v4.media.session.AbstractC0203a;
import android.support.p014v4.media.session.AbstractC0206b;
import android.support.p014v4.media.session.C0209c;
import android.support.p014v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.C0608g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a */
    private final AbstractC0198b f433a;

    /* renamed from: b */
    private final MediaSessionCompat.Token f434b;

    /* renamed from: c */
    private final HashSet<AbstractC0194a> f435c = new HashSet<>();

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    static class MediaControllerImplApi21 implements AbstractC0198b {

        /* renamed from: a */
        protected final Object f436a;

        /* renamed from: c */
        final MediaSessionCompat.Token f438c;

        /* renamed from: b */
        final Object f437b = new Object();

        /* renamed from: d */
        private final List<AbstractC0194a> f439d = new ArrayList();

        /* renamed from: e */
        private HashMap<AbstractC0194a, BinderC0193a> f440e = new HashMap<>();

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a */
            private WeakReference<MediaControllerImplApi21> f441a;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f441a = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f441a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f437b) {
                        mediaControllerImplApi21.f438c.m10063a(AbstractC0206b.AbstractBinderC0207a.m10043a(C0608g.m8745a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.f438c.m10064a(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                        mediaControllerImplApi21.m10070a();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        public static final class BinderC0193a extends AbstractC0194a.BinderC0197c {
            BinderC0193a(AbstractC0194a aVar) {
                super(aVar);
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10056a() {
                throw new AssertionError();
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10054a(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10053a(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10052a(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10050a(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0194a.BinderC0197c, android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10048a(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f438c = token;
            this.f436a = new MediaController(context, (MediaSession.Token) this.f438c.m10065a());
            if (this.f436a == null) {
                throw new RemoteException();
            } else if (this.f438c.m10060b() == null) {
                ((MediaController) this.f436a).sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
            }
        }

        /* renamed from: a */
        final void m10070a() {
            if (this.f438c.m10060b() != null) {
                for (AbstractC0194a aVar : this.f439d) {
                    BinderC0193a aVar2 = new BinderC0193a(aVar);
                    this.f440e.put(aVar, aVar2);
                    aVar.f444c = aVar2;
                    try {
                        this.f438c.m10060b().mo10033a(aVar2);
                        aVar.m10069a(13, null, null);
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    }
                }
                this.f439d.clear();
            }
        }

        @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0198b
        /* renamed from: a */
        public final boolean mo10068a(KeyEvent keyEvent) {
            return ((MediaController) this.f436a).dispatchMediaButtonEvent(keyEvent);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0194a implements IBinder.DeathRecipient {

        /* renamed from: a */
        final Object f442a;

        /* renamed from: b */
        HandlerC0195a f443b;

        /* renamed from: c */
        AbstractC0203a f444c;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        public final class HandlerC0195a extends Handler {

            /* renamed from: a */
            boolean f445a;

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (this.f445a) {
                    switch (message.what) {
                        case 1:
                            MediaSessionCompat.m10067a(message.getData());
                            Object obj = message.obj;
                            return;
                        case 2:
                            Object obj2 = message.obj;
                            return;
                        case 3:
                            Object obj3 = message.obj;
                            return;
                        case 4:
                            Object obj4 = message.obj;
                            return;
                        case 5:
                            Object obj5 = message.obj;
                            return;
                        case 6:
                            Object obj6 = message.obj;
                            return;
                        case 7:
                            MediaSessionCompat.m10067a((Bundle) message.obj);
                            return;
                        case 8:
                        case 10:
                        default:
                            return;
                        case 9:
                            ((Integer) message.obj).intValue();
                            return;
                        case 11:
                            ((Boolean) message.obj).booleanValue();
                            return;
                        case 12:
                            ((Integer) message.obj).intValue();
                            return;
                    }
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        private static final class C0196b implements C0209c.AbstractC0210a {

            /* renamed from: a */
            private final WeakReference<AbstractC0194a> f446a;

            C0196b(AbstractC0194a aVar) {
                this.f446a = new WeakReference<>(aVar);
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: a */
            public final void mo9993a() {
                this.f446a.get();
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: a */
            public final void mo9992a(int i, int i2, int i3, int i4, int i5) {
                if (this.f446a.get() != null) {
                    new C0202f(i, i2, i3, i4, i5);
                }
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: a */
            public final void mo9991a(Object obj) {
                AbstractC0194a aVar = this.f446a.get();
                if (aVar != null && aVar.f444c == null) {
                    PlaybackStateCompat.m10059a(obj);
                }
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: a */
            public final void mo9990a(List<?> list) {
                if (this.f446a.get() != null) {
                    MediaSessionCompat.QueueItem.m10066a(list);
                }
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: b */
            public final void mo9989b() {
                AbstractC0194a aVar = this.f446a.get();
                if (aVar != null && aVar.f444c != null) {
                    int i = Build.VERSION.SDK_INT;
                }
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: b */
            public final void mo9988b(Object obj) {
                if (this.f446a.get() != null) {
                    MediaMetadataCompat.m10077a(obj);
                }
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: c */
            public final void mo9987c() {
                this.f446a.get();
            }

            @Override // android.support.p014v4.media.session.C0209c.AbstractC0210a
            /* renamed from: d */
            public final void mo9986d() {
                this.f446a.get();
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        private static class BinderC0197c extends AbstractC0203a.AbstractBinderC0204a {

            /* renamed from: a */
            private final WeakReference<AbstractC0194a> f447a;

            BinderC0197c(AbstractC0194a aVar) {
                this.f447a = new WeakReference<>(aVar);
            }

            /* renamed from: a */
            public void mo10056a() {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(8, null, null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10055a(int i) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(9, Integer.valueOf(i), null);
                }
            }

            /* renamed from: a */
            public void mo10054a(Bundle bundle) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(7, bundle, null);
                }
            }

            /* renamed from: a */
            public void mo10053a(MediaMetadataCompat mediaMetadataCompat) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(3, mediaMetadataCompat, null);
                }
            }

            /* renamed from: a */
            public void mo10052a(ParcelableVolumeInfo parcelableVolumeInfo) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(4, parcelableVolumeInfo != null ? new C0202f(parcelableVolumeInfo.f461a, parcelableVolumeInfo.f462b, parcelableVolumeInfo.f463c, parcelableVolumeInfo.f464d, parcelableVolumeInfo.f465e) : null, null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10051a(PlaybackStateCompat playbackStateCompat) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(2, playbackStateCompat, null);
                }
            }

            /* renamed from: a */
            public void mo10050a(CharSequence charSequence) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(6, charSequence, null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10049a(String str, Bundle bundle) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(1, str, bundle);
                }
            }

            /* renamed from: a */
            public void mo10048a(List<MediaSessionCompat.QueueItem> list) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(5, list, null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: a */
            public final void mo10047a(boolean z) {
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10046b() {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(13, null, null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10045b(int i) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.p014v4.media.session.AbstractC0203a
            /* renamed from: b */
            public final void mo10044b(boolean z) {
                AbstractC0194a aVar = this.f447a.get();
                if (aVar != null) {
                    aVar.m10069a(11, Boolean.valueOf(z), null);
                }
            }
        }

        public AbstractC0194a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f442a = new C0209c.C0211b(new C0196b(this));
                return;
            }
            BinderC0197c cVar = new BinderC0197c(this);
            this.f444c = cVar;
            this.f442a = cVar;
        }

        /* renamed from: a */
        final void m10069a(int i, Object obj, Bundle bundle) {
            HandlerC0195a aVar = this.f443b;
            if (aVar != null) {
                Message obtainMessage = aVar.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    interface AbstractC0198b {
        /* renamed from: a */
        boolean mo10068a(KeyEvent keyEvent);
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$c.class */
    static class C0199c extends MediaControllerImplApi21 {
        public C0199c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$d.class */
    static final class C0200d extends C0199c {
        public C0200d(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$e.class */
    static final class C0201e implements AbstractC0198b {

        /* renamed from: a */
        private AbstractC0206b f448a;

        public C0201e(MediaSessionCompat.Token token) {
            this.f448a = AbstractC0206b.AbstractBinderC0207a.m10043a((IBinder) token.m10065a());
        }

        @Override // android.support.p014v4.media.session.MediaControllerCompat.AbstractC0198b
        /* renamed from: a */
        public final boolean mo10068a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f448a.mo10032a(keyEvent);
                    return false;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                    return false;
                }
            } else {
                throw new IllegalArgumentException("event may not be null.");
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$f.class */
    public static final class C0202f {

        /* renamed from: a */
        private final int f449a;

        /* renamed from: b */
        private final int f450b;

        /* renamed from: c */
        private final int f451c;

        /* renamed from: d */
        private final int f452d;

        /* renamed from: e */
        private final int f453e;

        C0202f(int i, int i2, int i3, int i4, int i5) {
            this.f449a = i;
            this.f450b = i2;
            this.f451c = i3;
            this.f452d = i4;
            this.f453e = i5;
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.f434b = token;
            if (Build.VERSION.SDK_INT >= 24) {
                this.f433a = new C0200d(context, token);
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.f433a = new C0199c(context, token);
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f433a = new MediaControllerImplApi21(context, token);
            } else {
                this.f433a = new C0201e(token);
            }
        } else {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
    }

    /* renamed from: a */
    public final boolean m10071a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f433a.mo10068a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}
