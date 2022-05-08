package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import androidx.media.AudioAttributesImplApi26;
import androidx.media.AudioAttributesImplBase;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat.class */
public class AudioAttributesCompat implements VersionedParcelable {
    public static final int CONTENT_TYPE_MOVIE = 3;
    public static final int CONTENT_TYPE_MUSIC = 2;
    public static final int CONTENT_TYPE_SONIFICATION = 4;
    public static final int CONTENT_TYPE_SPEECH = 1;
    public static final int CONTENT_TYPE_UNKNOWN = 0;
    public static final int FLAG_ALL = 1023;
    public static final int FLAG_ALL_PUBLIC = 273;
    public static final int FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int FLAG_BEACON = 8;
    public static final int FLAG_BYPASS_INTERRUPTION_POLICY = 64;
    public static final int FLAG_BYPASS_MUTE = 128;
    public static final int FLAG_DEEP_BUFFER = 512;
    public static final int FLAG_HW_AV_SYNC = 16;
    public static final int FLAG_HW_HOTWORD = 32;
    public static final int FLAG_LOW_LATENCY = 256;
    public static final int FLAG_SCO = 4;
    public static final int FLAG_SECURE = 2;
    public static final int INVALID_STREAM_TYPE = -1;
    public static final int SUPPRESSIBLE_CALL = 2;
    public static final int SUPPRESSIBLE_NOTIFICATION = 1;
    public static final String TAG = "AudioAttributesCompat";
    public static final int USAGE_ALARM = 4;
    public static final int USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int USAGE_ASSISTANT = 16;
    public static final int USAGE_GAME = 14;
    public static final int USAGE_MEDIA = 1;
    public static final int USAGE_NOTIFICATION = 5;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int USAGE_NOTIFICATION_EVENT = 10;
    public static final int USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int USAGE_UNKNOWN = 0;
    public static final int USAGE_VIRTUAL_SOURCE = 15;
    public static final int USAGE_VOICE_COMMUNICATION = 2;
    public static final int USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    public static boolean sForceLegacyBehavior;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AudioAttributesImpl mImpl;
    public static final SparseIntArray SUPPRESSIBLE_USAGES = new SparseIntArray();
    public static final int[] SDK_USAGES = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$AttributeContentType.class */
    public @interface AttributeContentType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$AttributeUsage.class */
    public @interface AttributeUsage {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$AudioManagerHidden.class */
    public static abstract class AudioManagerHidden {
        public static final int STREAM_ACCESSIBILITY = 10;
        public static final int STREAM_BLUETOOTH_SCO = 6;
        public static final int STREAM_SYSTEM_ENFORCED = 7;
        public static final int STREAM_TTS = 9;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompat$Builder.class */
    public static class Builder {
        public final AudioAttributesImpl.Builder mBuilderImpl;

        public Builder() {
            if (AudioAttributesCompat.sForceLegacyBehavior) {
                this.mBuilderImpl = new AudioAttributesImplBase.Builder();
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                this.mBuilderImpl = new AudioAttributesImplApi26.Builder();
            } else if (i >= 21) {
                this.mBuilderImpl = new AudioAttributesImplApi21.Builder();
            } else {
                this.mBuilderImpl = new AudioAttributesImplBase.Builder();
            }
        }

        public Builder(AudioAttributesCompat audioAttributesCompat) {
            if (AudioAttributesCompat.sForceLegacyBehavior) {
                this.mBuilderImpl = new AudioAttributesImplBase.Builder(audioAttributesCompat);
                return;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                this.mBuilderImpl = new AudioAttributesImplApi26.Builder(audioAttributesCompat.unwrap());
            } else if (i >= 21) {
                this.mBuilderImpl = new AudioAttributesImplApi21.Builder(audioAttributesCompat.unwrap());
            } else {
                this.mBuilderImpl = new AudioAttributesImplBase.Builder(audioAttributesCompat);
            }
        }

        public AudioAttributesCompat build() {
            return new AudioAttributesCompat(this.mBuilderImpl.build());
        }

        public Builder setContentType(int i) {
            this.mBuilderImpl.setContentType(i);
            return this;
        }

        public Builder setFlags(int i) {
            this.mBuilderImpl.setFlags(i);
            return this;
        }

        public Builder setLegacyStreamType(int i) {
            this.mBuilderImpl.setLegacyStreamType(i);
            return this;
        }

        public Builder setUsage(int i) {
            this.mBuilderImpl.setUsage(i);
            return this;
        }
    }

    static {
        SUPPRESSIBLE_USAGES.put(5, 1);
        SUPPRESSIBLE_USAGES.put(6, 2);
        SUPPRESSIBLE_USAGES.put(7, 2);
        SUPPRESSIBLE_USAGES.put(8, 1);
        SUPPRESSIBLE_USAGES.put(9, 1);
        SUPPRESSIBLE_USAGES.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.mImpl = audioAttributesImpl;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void setForceLegacyBehavior(boolean z) {
        sForceLegacyBehavior = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int toVolumeStreamType(boolean z, int i, int i2) {
        int i3 = 1;
        if ((i & 1) == 1) {
            if (!z) {
                i3 = 7;
            }
            return i3;
        }
        int i4 = 0;
        if ((i & 4) == 4) {
            if (!z) {
                i4 = 6;
            }
            return i4;
        }
        int i5 = 0;
        switch (i2) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                break;
            case 3:
                if (!z) {
                    i5 = 8;
                    break;
                } else {
                    i5 = 0;
                    break;
                }
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                if (!z) {
                    return 3;
                }
                throw new IllegalArgumentException("Unknown usage value " + i2 + " in audio attributes");
        }
        return i5;
    }

    public static String usageToString(int i) {
        switch (i) {
            case 0:
                return "USAGE_UNKNOWN";
            case 1:
                return "USAGE_MEDIA";
            case 2:
                return "USAGE_VOICE_COMMUNICATION";
            case 3:
                return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
            case 4:
                return "USAGE_ALARM";
            case 5:
                return "USAGE_NOTIFICATION";
            case 6:
                return "USAGE_NOTIFICATION_RINGTONE";
            case 7:
                return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
            case 8:
                return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
            case 9:
                return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
            case 10:
                return "USAGE_NOTIFICATION_EVENT";
            case 11:
                return "USAGE_ASSISTANCE_ACCESSIBILITY";
            case 12:
                return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
            case 13:
                return "USAGE_ASSISTANCE_SONIFICATION";
            case 14:
                return "USAGE_GAME";
            case 15:
            default:
                return "unknown usage " + i;
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    @Nullable
    public static AudioAttributesCompat wrap(@NonNull Object obj) {
        if (sForceLegacyBehavior) {
            return null;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj));
        }
        if (i >= 21) {
            return new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
        }
        return null;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.mImpl;
        if (audioAttributesImpl != null) {
            return audioAttributesImpl.equals(audioAttributesCompat.mImpl);
        }
        if (audioAttributesCompat.mImpl == null) {
            z = true;
        }
        return z;
    }

    public int getContentType() {
        return this.mImpl.getContentType();
    }

    public int getFlags() {
        return this.mImpl.getFlags();
    }

    public int getLegacyStreamType() {
        return this.mImpl.getLegacyStreamType();
    }

    public int getRawLegacyStreamType() {
        return this.mImpl.getRawLegacyStreamType();
    }

    public int getUsage() {
        return this.mImpl.getUsage();
    }

    public int getVolumeControlStream() {
        return this.mImpl.getVolumeControlStream();
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    public String toString() {
        return this.mImpl.toString();
    }

    @Nullable
    public Object unwrap() {
        return this.mImpl.getAudioAttributes();
    }
}
