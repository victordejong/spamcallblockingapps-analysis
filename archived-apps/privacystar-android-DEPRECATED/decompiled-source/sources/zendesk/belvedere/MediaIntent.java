package zendesk.belvedere;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.util.Pair;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/MediaIntent.class */
public class MediaIntent implements Parcelable {
    public static final Parcelable.Creator<MediaIntent> CREATOR = new Parcelable.Creator<MediaIntent>() { // from class: zendesk.belvedere.MediaIntent.1
        @Override // android.os.Parcelable.Creator
        public MediaIntent createFromParcel(@NonNull Parcel parcel) {
            return new MediaIntent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        public MediaIntent[] newArray(int i) {
            return new MediaIntent[i];
        }
    };
    static final int TARGET_CAMERA = 2;
    static final int TARGET_DOCUMENT = 1;
    private final Intent intent;
    private final boolean isAvailable;
    private final String permission;
    private final int requestCode;
    private final int target;

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/MediaIntent$CameraIntentBuilder.class */
    public static class CameraIntentBuilder {
        private final IntentRegistry intentRegistry;
        private final MediaSource mediaSource;
        private final int requestCode;
        private boolean video = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CameraIntentBuilder(int i, MediaSource mediaSource, IntentRegistry intentRegistry) {
            this.requestCode = i;
            this.mediaSource = mediaSource;
            this.intentRegistry = intentRegistry;
        }

        public MediaIntent build() {
            Pair<MediaIntent, MediaResult> cameraIntent = this.mediaSource.getCameraIntent(this.requestCode);
            MediaIntent mediaIntent = cameraIntent.first;
            MediaResult mediaResult = cameraIntent.second;
            if (mediaIntent.isAvailable()) {
                this.intentRegistry.updateRequestCode(this.requestCode, mediaResult);
            }
            return mediaIntent;
        }

        public void open(Activity activity) {
            build().open(activity);
        }

        public void open(Fragment fragment) {
            build().open(fragment);
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/MediaIntent$DocumentIntentBuilder.class */
    public static class DocumentIntentBuilder {
        private final MediaSource mediaSource;
        private final int requestCode;
        String contentType = "*/*";
        boolean allowMultiple = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DocumentIntentBuilder(int i, MediaSource mediaSource) {
            this.mediaSource = mediaSource;
            this.requestCode = i;
        }

        public DocumentIntentBuilder allowMultiple(boolean z) {
            this.allowMultiple = z;
            return this;
        }

        public MediaIntent build() {
            return this.mediaSource.getGalleryIntent(this.requestCode, this.contentType, this.allowMultiple);
        }

        public DocumentIntentBuilder contentType(String str) {
            this.contentType = str;
            return this;
        }

        public void open(Activity activity) {
            build().open(activity);
        }

        public void open(Fragment fragment) {
            build().open(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaIntent(int i, Intent intent, String str, boolean z, int i2) {
        this.requestCode = i;
        this.intent = intent;
        this.permission = str;
        this.isAvailable = z;
        this.target = i2;
    }

    MediaIntent(Parcel parcel) {
        this.requestCode = parcel.readInt();
        this.intent = (Intent) parcel.readParcelable(MediaIntent.class.getClassLoader());
        this.permission = parcel.readString();
        boolean[] zArr = new boolean[1];
        parcel.readBooleanArray(zArr);
        this.isAvailable = zArr[0];
        this.target = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediaIntent notAvailable() {
        return new MediaIntent(-1, null, null, false, -1);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent getIntent() {
        return this.intent;
    }

    public String getPermission() {
        return this.permission;
    }

    int getRequestCode() {
        return this.requestCode;
    }

    public int getTarget() {
        return this.target;
    }

    public boolean isAvailable() {
        return this.isAvailable;
    }

    public void open(Activity activity) {
        activity.startActivityForResult(this.intent, this.requestCode);
    }

    public void open(Fragment fragment) {
        fragment.startActivityForResult(this.intent, this.requestCode);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.requestCode);
        parcel.writeParcelable(this.intent, i);
        parcel.writeString(this.permission);
        parcel.writeBooleanArray(new boolean[]{this.isAvailable});
        parcel.writeInt(this.target);
    }
}
