package android.support.p014v4.media.session;

import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.p014v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0212d();

        /* renamed from: a */
        private final MediaDescriptionCompat f454a;

        /* renamed from: b */
        private final long f455b;

        /* renamed from: c */
        private Object f456c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public QueueItem(Parcel parcel) {
            this.f454a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f455b = parcel.readLong();
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            } else if (j != -1) {
                this.f454a = mediaDescriptionCompat;
                this.f455b = j;
                this.f456c = obj;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        /* renamed from: a */
        public static List<QueueItem> m10066a(List<?> list) {
            QueueItem queueItem;
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj == null || Build.VERSION.SDK_INT < 21) {
                    queueItem = null;
                } else {
                    MediaSession.QueueItem queueItem2 = (MediaSession.QueueItem) obj;
                    queueItem = new QueueItem(obj, MediaDescriptionCompat.m10087a(queueItem2.getDescription()), queueItem2.getQueueId());
                }
                arrayList.add(queueItem);
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaSession.QueueItem {Description=" + this.f454a + ", Id=" + this.f455b + " }";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.f454a.writeToParcel(parcel, i);
            parcel.writeLong(this.f455b);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0213e();

        /* renamed from: a */
        ResultReceiver f457a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ResultReceiverWrapper(Parcel parcel) {
            this.f457a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            this.f457a.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0214f();

        /* renamed from: a */
        private final Object f458a;

        /* renamed from: b */
        private AbstractC0206b f459b;

        /* renamed from: c */
        private Bundle f460c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Token(Object obj) {
            this(obj, null, (byte) 0);
        }

        private Token(Object obj, AbstractC0206b bVar) {
            this(obj, bVar, (byte) 0);
        }

        private Token(Object obj, AbstractC0206b bVar, byte b) {
            this.f458a = obj;
            this.f459b = bVar;
            this.f460c = null;
        }

        /* renamed from: a */
        public static Token m10062a(Object obj) {
            return m10061a(obj, null);
        }

        /* renamed from: a */
        public static Token m10061a(Object obj, AbstractC0206b bVar) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(C0215g.m9985a(obj), bVar);
        }

        /* renamed from: a */
        public final Object m10065a() {
            return this.f458a;
        }

        /* renamed from: a */
        public final void m10064a(Bundle bundle) {
            this.f460c = bundle;
        }

        /* renamed from: a */
        public final void m10063a(AbstractC0206b bVar) {
            this.f459b = bVar;
        }

        /* renamed from: b */
        public final AbstractC0206b m10060b() {
            return this.f459b;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f458a;
            if (obj2 == null) {
                return token.f458a == null;
            }
            Object obj3 = token.f458a;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public final int hashCode() {
            Object obj = this.f458a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int i2 = Build.VERSION.SDK_INT;
            Object obj = this.f458a;
            if (i2 >= 21) {
                parcel.writeParcelable((Parcelable) obj, i);
            } else {
                parcel.writeStrongBinder((IBinder) obj);
            }
        }
    }

    /* renamed from: a */
    public static void m10067a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }
}
