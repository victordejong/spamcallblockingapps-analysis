package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters.class */
public class TrackSelectionParameters implements Parcelable {
    public final int disabledTextTrackSelectionFlags;
    @Nullable
    public final String preferredAudioLanguage;
    @Nullable
    public final String preferredTextLanguage;
    public final boolean selectUndeterminedTextLanguage;
    public static final TrackSelectionParameters DEFAULT = new TrackSelectionParameters();
    public static final Parcelable.Creator<TrackSelectionParameters> CREATOR = new Parcelable.Creator<TrackSelectionParameters>() { // from class: androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters createFromParcel(Parcel parcel) {
            return new TrackSelectionParameters(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrackSelectionParameters[] newArray(int i) {
            return new TrackSelectionParameters[i];
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$Builder.class */
    public static class Builder {
        public int disabledTextTrackSelectionFlags;
        @Nullable
        public String preferredAudioLanguage;
        @Nullable
        public String preferredTextLanguage;
        public boolean selectUndeterminedTextLanguage;

        public Builder() {
            this(TrackSelectionParameters.DEFAULT);
        }

        public Builder(TrackSelectionParameters trackSelectionParameters) {
            this.preferredAudioLanguage = trackSelectionParameters.preferredAudioLanguage;
            this.preferredTextLanguage = trackSelectionParameters.preferredTextLanguage;
            this.selectUndeterminedTextLanguage = trackSelectionParameters.selectUndeterminedTextLanguage;
            this.disabledTextTrackSelectionFlags = trackSelectionParameters.disabledTextTrackSelectionFlags;
        }

        public TrackSelectionParameters build() {
            return new TrackSelectionParameters(this.preferredAudioLanguage, this.preferredTextLanguage, this.selectUndeterminedTextLanguage, this.disabledTextTrackSelectionFlags);
        }

        public Builder setDisabledTextTrackSelectionFlags(int i) {
            this.disabledTextTrackSelectionFlags = i;
            return this;
        }

        public Builder setPreferredAudioLanguage(@Nullable String str) {
            this.preferredAudioLanguage = str;
            return this;
        }

        public Builder setPreferredTextLanguage(@Nullable String str) {
            this.preferredTextLanguage = str;
            return this;
        }

        public Builder setSelectUndeterminedTextLanguage(boolean z) {
            this.selectUndeterminedTextLanguage = z;
            return this;
        }
    }

    public TrackSelectionParameters() {
        this(null, null, false, 0);
    }

    public TrackSelectionParameters(Parcel parcel) {
        this.preferredAudioLanguage = parcel.readString();
        this.preferredTextLanguage = parcel.readString();
        this.selectUndeterminedTextLanguage = Util.readBoolean(parcel);
        this.disabledTextTrackSelectionFlags = parcel.readInt();
    }

    public TrackSelectionParameters(@Nullable String str, @Nullable String str2, boolean z, int i) {
        this.preferredAudioLanguage = Util.normalizeLanguageCode(str);
        this.preferredTextLanguage = Util.normalizeLanguageCode(str2);
        this.selectUndeterminedTextLanguage = z;
        this.disabledTextTrackSelectionFlags = i;
    }

    public Builder buildUpon() {
        return new Builder(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
        if (!TextUtils.equals(this.preferredAudioLanguage, trackSelectionParameters.preferredAudioLanguage) || !TextUtils.equals(this.preferredTextLanguage, trackSelectionParameters.preferredTextLanguage) || this.selectUndeterminedTextLanguage != trackSelectionParameters.selectUndeterminedTextLanguage || this.disabledTextTrackSelectionFlags != trackSelectionParameters.disabledTextTrackSelectionFlags) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.preferredAudioLanguage;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.preferredTextLanguage;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((((hashCode + 31) * 31) + i) * 31) + (this.selectUndeterminedTextLanguage ? 1 : 0)) * 31) + this.disabledTextTrackSelectionFlags;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.preferredAudioLanguage);
        parcel.writeString(this.preferredTextLanguage);
        Util.writeBoolean(parcel, this.selectUndeterminedTextLanguage);
        parcel.writeInt(this.disabledTextTrackSelectionFlags);
    }
}
