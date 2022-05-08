package android.support.p014v4.media.session;

import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: android.support.v4.media.session.PlaybackStateCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat.class */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0217i();

    /* renamed from: a */
    final int f466a;

    /* renamed from: b */
    final long f467b;

    /* renamed from: c */
    final long f468c;

    /* renamed from: d */
    final float f469d;

    /* renamed from: e */
    final long f470e;

    /* renamed from: f */
    final int f471f;

    /* renamed from: g */
    final CharSequence f472g;

    /* renamed from: h */
    final long f473h;

    /* renamed from: i */
    List<CustomAction> f474i;

    /* renamed from: j */
    final long f475j;

    /* renamed from: k */
    final Bundle f476k;

    /* renamed from: l */
    private Object f477l;

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/PlaybackStateCompat$CustomAction.class */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0218j();

        /* renamed from: a */
        private final String f478a;

        /* renamed from: b */
        private final CharSequence f479b;

        /* renamed from: c */
        private final int f480c;

        /* renamed from: d */
        private final Bundle f481d;

        /* renamed from: e */
        private Object f482e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CustomAction(Parcel parcel) {
            this.f478a = parcel.readString();
            this.f479b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f480c = parcel.readInt();
            this.f481d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        private CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f478a = str;
            this.f479b = charSequence;
            this.f480c = i;
            this.f481d = bundle;
        }

        /* renamed from: a */
        public static CustomAction m10058a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            CustomAction customAction2 = new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), customAction.getExtras());
            customAction2.f482e = obj;
            return customAction2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f479b) + ", mIcon=" + this.f480c + ", mExtras=" + this.f481d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f478a);
            TextUtils.writeToParcel(this.f479b, parcel, i);
            parcel.writeInt(this.f480c);
            parcel.writeBundle(this.f481d);
        }
    }

    private PlaybackStateCompat(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f466a = i;
        this.f467b = j;
        this.f468c = j2;
        this.f469d = f;
        this.f470e = j3;
        this.f471f = 0;
        this.f472g = charSequence;
        this.f473h = j4;
        this.f474i = new ArrayList(list);
        this.f475j = j5;
        this.f476k = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaybackStateCompat(Parcel parcel) {
        this.f466a = parcel.readInt();
        this.f467b = parcel.readLong();
        this.f469d = parcel.readFloat();
        this.f473h = parcel.readLong();
        this.f468c = parcel.readLong();
        this.f470e = parcel.readLong();
        this.f472g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f474i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f475j = parcel.readLong();
        this.f476k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f471f = parcel.readInt();
    }

    /* renamed from: a */
    public static PlaybackStateCompat m10059a(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        PlaybackStateCompat playbackStateCompat = null;
        if (obj != null) {
            playbackStateCompat = null;
            if (Build.VERSION.SDK_INT >= 21) {
                PlaybackState playbackState = (PlaybackState) obj;
                List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
                if (customActions != null) {
                    arrayList = new ArrayList(customActions.size());
                    for (PlaybackState.CustomAction customAction : customActions) {
                        arrayList.add(CustomAction.m10058a(customAction));
                    }
                } else {
                    arrayList = null;
                }
                if (Build.VERSION.SDK_INT >= 22) {
                    bundle = playbackState.getExtras();
                }
                playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), bundle);
                playbackStateCompat.f477l = obj;
            }
        }
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.f466a + ", position=" + this.f467b + ", buffered position=" + this.f468c + ", speed=" + this.f469d + ", updated=" + this.f473h + ", actions=" + this.f470e + ", error code=" + this.f471f + ", error message=" + this.f472g + ", custom actions=" + this.f474i + ", active item id=" + this.f475j + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f466a);
        parcel.writeLong(this.f467b);
        parcel.writeFloat(this.f469d);
        parcel.writeLong(this.f473h);
        parcel.writeLong(this.f468c);
        parcel.writeLong(this.f470e);
        TextUtils.writeToParcel(this.f472g, parcel, i);
        parcel.writeTypedList(this.f474i);
        parcel.writeLong(this.f475j);
        parcel.writeBundle(this.f476k);
        parcel.writeInt(this.f471f);
    }
}
