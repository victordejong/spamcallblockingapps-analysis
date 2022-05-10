package android.support.p009v4.media.session;

import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.p009v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p000a.p001a.p003b.p005b.p006a.AbstractC0011b;
import p012b.p042i.p043h.C0849d;
import p012b.p130z.AbstractC1978c;
import p012b.p130z.C1976a;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: a */
    public final AbstractC0056a f95a;

    /* renamed from: b */
    public final MediaControllerCompat f96b;

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0053a();

        /* renamed from: a */
        public final MediaDescriptionCompat f97a;

        /* renamed from: b */
        public final long f98b;

        /* renamed from: c */
        public MediaSession.QueueItem f99c;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem$a.class */
        public static final class C0053a implements Parcelable.Creator<QueueItem> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        public QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            } else if (j != -1) {
                this.f97a = mediaDescriptionCompat;
                this.f98b = j;
                this.f99c = queueItem;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        public QueueItem(Parcel parcel) {
            this.f97a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f98b = parcel.readLong();
        }

        /* renamed from: a */
        public static QueueItem m39246a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
            return new QueueItem(queueItem, MediaDescriptionCompat.m39288a(queueItem.getDescription()), queueItem.getQueueId());
        }

        /* renamed from: a */
        public static List<QueueItem> m39245a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m39246a(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f97a + ", Id=" + this.f98b + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f97a.writeToParcel(parcel, i);
            parcel.writeLong(this.f98b);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0054a();

        /* renamed from: a */
        public ResultReceiver f100a;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$a.class */
        public static final class C0054a implements Parcelable.Creator<ResultReceiverWrapper> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        public ResultReceiverWrapper(Parcel parcel) {
            this.f100a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f100a.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0055a();

        /* renamed from: a */
        public final Object f101a;

        /* renamed from: b */
        public AbstractC0011b f102b;

        /* renamed from: c */
        public AbstractC1978c f103c;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token$a.class */
        public static final class C0055a implements Parcelable.Creator<Token> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i) {
                return new Token[i];
            }
        }

        public Token(Object obj) {
            this(obj, null, null);
        }

        public Token(Object obj, AbstractC0011b bVar) {
            this(obj, bVar, null);
        }

        public Token(Object obj, AbstractC0011b bVar, AbstractC1978c cVar) {
            this.f101a = obj;
            this.f102b = bVar;
            this.f103c = cVar;
        }

        /* renamed from: a */
        public static Token m39242a(Bundle bundle) {
            Token token = null;
            if (bundle == null) {
                return null;
            }
            AbstractC0011b a = AbstractC0011b.AbstractBinderC0012a.m39338a(C0849d.m35783a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            AbstractC1978c a2 = C1976a.m31391a(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
            Token token2 = (Token) bundle.getParcelable("android.support.v4.media.session.TOKEN");
            if (token2 != null) {
                token = new Token(token2.f101a, a, a2);
            }
            return token;
        }

        /* renamed from: a */
        public static Token m39240a(Object obj) {
            return m39239a(obj, null);
        }

        /* renamed from: a */
        public static Token m39239a(Object obj, AbstractC0011b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        /* renamed from: a */
        public AbstractC0011b m39244a() {
            return this.f102b;
        }

        /* renamed from: a */
        public void m39243a(AbstractC0011b bVar) {
            this.f102b = bVar;
        }

        /* renamed from: a */
        public void m39241a(AbstractC1978c cVar) {
            this.f103c = cVar;
        }

        /* renamed from: b */
        public AbstractC1978c m39238b() {
            return this.f103c;
        }

        /* renamed from: c */
        public Object m39237c() {
            return this.f101a;
        }

        /* renamed from: d */
        public Bundle m39236d() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
            AbstractC0011b bVar = this.f102b;
            if (bVar != null) {
                C0849d.m35782a(bundle, "android.support.v4.media.session.EXTRA_BINDER", bVar.asBinder());
            }
            AbstractC1978c cVar = this.f103c;
            if (cVar != null) {
                C1976a.m31390a(bundle, "android.support.v4.media.session.SESSION_TOKEN2", cVar);
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f101a;
            if (obj2 == null) {
                if (token.f101a != null) {
                    z = false;
                }
                return z;
            }
            Object obj3 = token.f101a;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f101a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f101a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f101a);
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$a.class */
    public interface AbstractC0056a {
        /* renamed from: a */
        Token m39235a();
    }

    /* renamed from: a */
    public static void m39248a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    /* renamed from: a */
    public MediaControllerCompat m39249a() {
        return this.f96b;
    }

    /* renamed from: b */
    public Token m39247b() {
        return this.f95a.m39235a();
    }
}
