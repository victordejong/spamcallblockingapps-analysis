package android.support.p001v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v4.media.AudioAttributesImplBase */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AudioAttributesImpl {
    int mContentType;
    int mFlags;
    int mLegacyStream;
    int mUsage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplBase() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
        this.mContentType = i;
        this.mFlags = i2;
        this.mUsage = i3;
        this.mLegacyStream = i4;
    }

    public static AudioAttributesImpl fromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return new AudioAttributesImplBase(bundle.getInt("android.support.v4.media.audio_attrs.CONTENT_TYPE", 0), bundle.getInt("android.support.v4.media.audio_attrs.FLAGS", 0), bundle.getInt("android.support.v4.media.audio_attrs.USAGE", 0), bundle.getInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", -1));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.mContentType == audioAttributesImplBase.getContentType()) {
            z = false;
            if (this.mFlags == audioAttributesImplBase.getFlags()) {
                z = false;
                if (this.mUsage == audioAttributesImplBase.getUsage()) {
                    z = false;
                    if (this.mLegacyStream == audioAttributesImplBase.mLegacyStream) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public Object getAudioAttributes() {
        return null;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getContentType() {
        return this.mContentType;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getFlags() {
        int i;
        int i2 = this.mFlags;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (legacyStreamType == 7) {
                i = i2 | 1;
            }
        }
        return i & 273;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        return this.mLegacyStream != -1 ? this.mLegacyStream : AudioAttributesCompat.toVolumeStreamType(false, this.mFlags, this.mUsage);
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStream;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getUsage() {
        return this.mUsage;
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.toVolumeStreamType(true, this.mFlags, this.mUsage);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mContentType), Integer.valueOf(this.mFlags), Integer.valueOf(this.mUsage), Integer.valueOf(this.mLegacyStream)});
    }

    @Override // android.support.p001v4.media.AudioAttributesImpl
    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.v4.media.audio_attrs.USAGE", this.mUsage);
        bundle.putInt("android.support.v4.media.audio_attrs.CONTENT_TYPE", this.mContentType);
        bundle.putInt("android.support.v4.media.audio_attrs.FLAGS", this.mFlags);
        if (this.mLegacyStream != -1) {
            bundle.putInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", this.mLegacyStream);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.mLegacyStream != -1) {
            sb.append(" stream=");
            sb.append(this.mLegacyStream);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.usageToString(this.mUsage));
        sb.append(" content=");
        sb.append(this.mContentType);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.mFlags).toUpperCase());
        return sb.toString();
    }
}
