package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImplApi21;
@RequiresApi(26)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26.class */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {
    public static final String TAG = "AudioAttributesCompat26";

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26$Builder.class */
    public static class Builder extends AudioAttributesImplApi21.Builder {
        public Builder() {
        }

        public Builder(Object obj) {
            super(obj);
        }

        @Override // androidx.media.AudioAttributesImplApi21.Builder, androidx.media.AudioAttributesImpl.Builder
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi26(this.mFwkBuilder.build());
        }

        @Override // androidx.media.AudioAttributesImplApi21.Builder, androidx.media.AudioAttributesImpl.Builder
        public Builder setUsage(int i) {
            this.mFwkBuilder.setUsage(i);
            return this;
        }
    }

    public AudioAttributesImplApi26() {
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }

    @Override // androidx.media.AudioAttributesImplApi21, androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return this.mAudioAttributes.getVolumeControlStream();
    }
}
