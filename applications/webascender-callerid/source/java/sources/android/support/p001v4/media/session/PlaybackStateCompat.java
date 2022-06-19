package android.support.p001v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.media.session.C0031g;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0020a();

    /* renamed from: f */
    final int f40f;

    /* renamed from: g */
    final long f41g;

    /* renamed from: h */
    final long f42h;

    /* renamed from: i */
    final float f43i;

    /* renamed from: j */
    final long f44j;

    /* renamed from: k */
    final int f45k;

    /* renamed from: l */
    final CharSequence f46l;

    /* renamed from: m */
    final long f47m;

    /* renamed from: n */
    List<CustomAction> f48n;

    /* renamed from: o */
    final long f49o;

    /* renamed from: p */
    final Bundle f50p;

    /* renamed from: q */
    private Object f51q;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0019a();

        /* renamed from: f */
        private final String f52f;

        /* renamed from: g */
        private final CharSequence f53g;

        /* renamed from: h */
        private final int f54h;

        /* renamed from: i */
        private final Bundle f55i;

        /* renamed from: j */
        private Object f56j;

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction$a.class */
        static final class C0019a implements Parcelable.Creator<CustomAction> {
            C0019a() {
            }

            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* renamed from: b */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        CustomAction(Parcel parcel) {
            this.f52f = parcel.readString();
            this.f53g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f54h = parcel.readInt();
            this.f55i = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f52f = str;
            this.f53g = charSequence;
            this.f54h = i;
            this.f55i = bundle;
        }

        /* renamed from: a */
        public static CustomAction m7047a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(C0031g.C0032a.m6996a(obj), C0031g.C0032a.m6993d(obj), C0031g.C0032a.m6994c(obj), C0031g.C0032a.m6995b(obj));
            customAction.f56j = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f53g) + ", mIcon=" + this.f54h + ", mExtras=" + this.f55i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f52f);
            TextUtils.writeToParcel(this.f53g, parcel, i);
            parcel.writeInt(this.f54h);
            parcel.writeBundle(this.f55i);
        }
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$a.class */
    static final class C0020a implements Parcelable.Creator<PlaybackStateCompat> {
        C0020a() {
        }

        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* renamed from: b */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f40f = i;
        this.f41g = j;
        this.f42h = j2;
        this.f43i = f;
        this.f44j = j3;
        this.f45k = i2;
        this.f46l = charSequence;
        this.f47m = j4;
        this.f48n = new ArrayList(list);
        this.f49o = j5;
        this.f50p = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f40f = parcel.readInt();
        this.f41g = parcel.readLong();
        this.f43i = parcel.readFloat();
        this.f47m = parcel.readLong();
        this.f42h = parcel.readLong();
        this.f44j = parcel.readLong();
        this.f46l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f48n = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f49o = parcel.readLong();
        this.f50p = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f45k = parcel.readInt();
    }

    /* renamed from: a */
    public static PlaybackStateCompat m7048a(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        PlaybackStateCompat playbackStateCompat = null;
        if (obj != null) {
            playbackStateCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                List<Object> m7002d = C0031g.m7002d(obj);
                if (m7002d != null) {
                    arrayList = new ArrayList(m7002d.size());
                    for (Object obj2 : m7002d) {
                        arrayList.add(CustomAction.m7047a(obj2));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = C0033h.m6992a(obj);
                }
                playbackStateCompat = new PlaybackStateCompat(C0031g.m6997i(obj), C0031g.m6998h(obj), C0031g.m7003c(obj), C0031g.m6999g(obj), C0031g.m7005a(obj), 0, C0031g.m7001e(obj), C0031g.m7000f(obj), arrayList, C0031g.m7004b(obj), bundle);
                playbackStateCompat.f51q = obj;
            }
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f40f + ", position=" + this.f41g + ", buffered position=" + this.f42h + ", speed=" + this.f43i + ", updated=" + this.f47m + ", actions=" + this.f44j + ", error code=" + this.f45k + ", error message=" + this.f46l + ", custom actions=" + this.f48n + ", active item id=" + this.f49o + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f40f);
        parcel.writeLong(this.f41g);
        parcel.writeFloat(this.f43i);
        parcel.writeLong(this.f47m);
        parcel.writeLong(this.f42h);
        parcel.writeLong(this.f44j);
        TextUtils.writeToParcel(this.f46l, parcel, i);
        parcel.writeTypedList(this.f48n);
        parcel.writeLong(this.f49o);
        parcel.writeBundle(this.f50p);
        parcel.writeInt(this.f45k);
    }
}
